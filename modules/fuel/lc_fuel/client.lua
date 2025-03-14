local resourceName = "lc_fuel"
local configValue = BridgeClientConfig.Fuel
if (configValue == "auto" and GetResourceState(resourceName) ~= "started") or (configValue ~= "auto" and configValue ~= resourceName) then return end
--print("Fuel: Loading lc_fuel")
if GetResourceState('lc_fuel') ~= 'started' then return end
Fuel = Fuel or {}

Fuel.GetFuel = function(vehicle)
    if not DoesEntityExist(vehicle) then return 0.0 end
    return exports["lc_fuel"]:GetFuel(vehicle)
end


Fuel.SetFuel = function(vehicle, fuel, type)
    if not DoesEntityExist(vehicle) then return end
    return exports["lc_fuel"]:SetFuel(vehicle, fuel)
end
