local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}
local testDriveVeh = nil
local inTestDrive = false
local vehicleShopPed = nil
local testDriveCoords = vector4(-31.12, -1090.79, 26.42, 340.0)
local vehicleSpawnCoords = vector4(-31.12, -1090.79, 26.42, 340.0)
local dealershipCoords = vector3(-56.05, -1096.37, 26.42)

-- Initialize ped and target
local function InitializePed()
    local model = Config.PedModel
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end

    vehicleShopPed = CreatePed(4, model, Config.PedLocation.x, Config.PedLocation.y, Config.PedLocation.z - 1.0,
        Config.PedLocation.w, false, true)
    FreezeEntityPosition(vehicleShopPed, true)
    SetEntityInvincible(vehicleShopPed, true)
    SetBlockingOfNonTemporaryEvents(vehicleShopPed, true)

    if Config.UseOxTarget then
        -- ox_target implementation
        exports.ox_target:addModel(GetEntityModel(vehicleShopPed), {
            {
                name = 'vehicle_shop',
                icon = 'fas fa-car',
                label = 'Browse Vehicles',
                onSelect = function()
                    TriggerEvent('qr-vehicleshop:client:openShop')
                end,
                distance = 2.5,
            }
        })
    else
        -- qb-target implementation
        exports['qb-target']:AddTargetEntity(vehicleShopPed, {
            options = {
                {
                    type = "client",
                    event = "qr-vehicleshop:client:openShop",
                    icon = "fas fa-car",
                    label = "Browse Vehicles",
                }
            },
            distance = 2.5,
        })
    end
end


-- Enhanced test drive handling
local function EndTestDrive(reason)
    if testDriveVeh then
        -- Remove invincibility from the player and vehicle when the test drive ends
        SetEntityInvincible(PlayerPedId(), false)
        SetEntityInvincible(testDriveVeh, false)

        DeleteVehicle(testDriveVeh)
        testDriveVeh = nil
        inTestDrive = false
        SetEntityCoords(PlayerPedId(), dealershipCoords)
        QBCore.Functions.Notify(reason or "Test drive completed!", reason and "error" or "success")
        SendNUIMessage({
            action = "testDriveEnded"
        })
        -- Force reset UI state
        Wait(100)
        SendNUIMessage({
            action = "resetTestDrive"
        })
    end
end

-- Listen for when the player exits the vehicle
AddEventHandler('player:vehicleExited', function(vehicle)
    if inTestDrive and vehicle == testDriveVeh then
        EndTestDrive("You exited the vehicle. Test drive cancelled.")
    end
end)

CreateThread(function()
    while true do
        Wait(500)

        if inTestDrive and testDriveVeh then
            if not IsPedInVehicle(PlayerPedId(), testDriveVeh, false) then
                TriggerEvent('player:vehicleExited', testDriveVeh)
            end
        end
    end
end)


-- Improved countdown function
local function StartTestDriveCountdown()
    if inTestDrive then return end -- Prevent multiple countdowns

    local timeLeft = Config.TestDriveTime
    inTestDrive = true

    -- Initial timer display
    SendNUIMessage({
        action = "updateTestDriveTime",
        time = timeLeft
    })

    -- Set player and vehicle invincibility to true during the test drive
    SetEntityInvincible(PlayerPedId(), true)
    SetEntityInvincible(testDriveVeh, true)

    CreateThread(function()
        while timeLeft > 0 and inTestDrive do
            Wait(1000)
            timeLeft = timeLeft - 1

            if not inTestDrive then break end

            SendNUIMessage({
                action = "updateTestDriveTime",
                time = timeLeft
            })
        end

        if inTestDrive then
            EndTestDrive()
        end
    end)
end


-- Enhanced vehicle spawn function
local function SpawnVehicle(model, coords, testDrive, plate)
    if testDrive and inTestDrive then
        QBCore.Functions.Notify("Already in a test drive!", "error")
        return
    end

    QBCore.Functions.SpawnVehicle(model, function(vehicle)
        SetEntityHeading(vehicle, coords.w)

        -- Set plate
        if plate then
            SetVehicleNumberPlateText(vehicle, plate)
        else
            SetVehicleNumberPlateText(vehicle, "QRDEV")
        end

        SetEntityAsMissionEntity(vehicle, true, true)
        SetVehicleEngineOn(vehicle, true, true, false)
        SetVehicleDirtLevel(vehicle, 0.0)
        SetVehicleModKit(vehicle, 0)

        -- Handle different fuel scripts
        if GetResourceState('LegacyFuel') == 'started' then
            exports['LegacyFuel']:SetFuel(vehicle, 100.0)
        elseif GetResourceState('ps-fuel') == 'started' then
            exports['ps-fuel']:SetFuel(vehicle, 100.0)
        elseif GetResourceState('cdn-fuel') == 'started' then
            exports['cdn-fuel']:SetFuel(vehicle, 100.0)
        end

        if testDrive then
            testDriveVeh = vehicle
            StartTestDriveCountdown()
        else
            -- Set vehicle properties and give keys when purchased
            local props = QBCore.Functions.GetVehicleProperties(vehicle)
            TriggerServerEvent('qr-vehicleshop:server:setVehicleOwned', plate, props)
            TriggerEvent('vehiclekeys:client:SetOwner', plate)
        end

        TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
    end, coords, true)
end

-- NUI Callbacks
RegisterNUICallback('testDrive', function(data, cb)
    if not inTestDrive then
        SpawnVehicle(data.model, testDriveCoords, true)
        SetNuiFocus(false, false)
        QBCore.Functions.Notify("Test drive started! You have " .. Config.TestDriveTime .. " seconds.", "primary")
    else
        QBCore.Functions.Notify("You're already test driving a vehicle!", "error")
    end
    cb('ok')
end)

RegisterNUICallback('buyVehicle', function(data, cb)
    if inTestDrive then
        EndTestDrive()
    end
    TriggerServerEvent('qr-vehicleshop:server:buyVehicle', data.model, data.price)
    SetNuiFocus(false, false)
    cb('ok')
end)

RegisterNUICallback('close', function(data, cb)
    if inTestDrive then
        EndTestDrive("Test drive cancelled")
    end
    SetNuiFocus(false, false)
    cb('ok')
end)

-- Event handlers
RegisterNetEvent("qr-vehicleshop:client:openShop")
AddEventHandler("qr-vehicleshop:client:openShop", function()
    if inTestDrive then
        QBCore.Functions.Notify("Finish your test drive first!", "error")
        return
    end

    -- Reset states when opening shop
    inTestDrive = false
    if testDriveVeh then
        DeleteVehicle(testDriveVeh)
        testDriveVeh = nil
    end

    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open",
        categories = Config.Categories,
        vehicles = Config.Vehicles,
    })
end)

RegisterNetEvent("qr-vehicleshop:client:successfulBuy")
AddEventHandler("qr-vehicleshop:client:successfulBuy", function(model, plate)
    SpawnVehicle(model, vehicleSpawnCoords, false, plate)
    QBCore.Functions.Notify("Congratulations on your purchase! Vehicle spawned outside.", "success")
end)

-- Initialize resource
CreateThread(function()
    InitializePed()
end)
