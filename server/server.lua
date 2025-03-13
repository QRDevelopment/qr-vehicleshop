local QBCore = exports['qb-core']:GetCoreObject()

-- Generate unique plate
local function GeneratePlate()
    local plate = QBCore.Shared.RandomInt(1) ..
        QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(2)
    local result = MySQL.scalar.await('SELECT plate FROM player_vehicles WHERE plate = ?', { plate })
    if result then
        return GeneratePlate()
    else
        return plate:upper()
    end
end

-- Buy vehicle
RegisterNetEvent('qr-vehicleshop:server:buyVehicle', function(model, price)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local plate = GeneratePlate()
    local vehiclePrice = tonumber(price)

    if Player.PlayerData.money.cash >= vehiclePrice then
        Player.Functions.RemoveMoney('cash', vehiclePrice)

        MySQL.insert(
            'INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, state, garage) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
            {
                Player.PlayerData.license,
                Player.PlayerData.citizenid,
                model,
                GetHashKey(model),
                '{}',
                plate,
                1,
                'pillboxgarage'
            })

        TriggerClientEvent('qr-vehicleshop:client:successfulBuy', src, model, plate)
    else
        TriggerClientEvent('QBCore:Notify', src, 'Not enough money!', 'error')
    end
end)


-- Generate plate callback
RegisterNetEvent('qr-vehicleshop:server:generatePlate', function()
    local src = source
    local plate = GeneratePlate()
    TriggerClientEvent('qr-vehicleshop:client:receivePlate', src, plate)
end)

-- Set vehicle as owned
RegisterNetEvent('qr-vehicleshop:server:setVehicleOwned', function(plate, props)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    MySQL.update('UPDATE player_vehicles SET mods = ? WHERE plate = ? AND citizenid = ?', {
        json.encode(props),
        plate,
        Player.PlayerData.citizenid
    })
end)
