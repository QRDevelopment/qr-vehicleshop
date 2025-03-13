local Translations = {
    error = {
        not_enough_money = "Not enough money!",
        failed_purchase = "Vehicle purchase failed!",
    },
    success = {
        vehicle_purchased = "Vehicle purchased successfully!",
    },
    info = {
        browsing_vehicles = "Browsing vehicles...",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})