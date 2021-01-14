local clockHours = GetClockHours()
local clockMinutes = GetClockMinutes()

RegisterCommand("StormStart", function(source, args)
    --stage1[overcast and night]
   TriggerServerEvent("Storm:Message")
    notify(StormConfig.Perms)
    NetworkOverrideClockTime(1, 30, 00)
    ClearOverrideWeather()
    ClearWeatherTypePersist()
    SetWeatherTypePersist("OVERCAST")
    SetWeatherTypeNow("OVERCAST")
    SetWeatherTypeNowPersist("OVERCAST")
    --stage2[strong winds and rain]
    Citizen.Wait(1000 * 120)
    ClearOverrideWeather()
    ClearWeatherTypePersist()
    SetWeatherTypePersist("RAIN")
    SetWeatherTypeNow("RAIN")
    SetWeatherTypeNowPersist("RAIN")
    SetWindSpeed(12)
    --stage3[thunder,rain strong winds]
    Citizen.Wait(1000 * 180)
    ClearOverrideWeather()
    ClearWeatherTypePersist()
    SetWeatherTypePersist("THUNDER")
    SetWeatherTypeNow("THUNDER")
    SetWeatherTypeNowPersist("THUNDER")
    SetWindSpeed(12)
    --Blackout[loop every 1m-2s]
      blackoutloop()
    notify(StormConfig.InProgress)
  end)

RegisterCommand("StormStop",function(source, args)
    --ends[force stops]
    TriggerServerEvent("Storm:Finished")
        SetBlackout(false)
        ClearOverrideWeather()
        ClearWeatherTypePersist()
        SetWeatherTypePersist("CLEAR")
        SetWeatherTypeNow("CLEAR")
        SetWeatherTypeNowPersist("CLEAR")
        notify(StormConfig.Stopped)
end)

RegisterNetEvent("Storm:NoPerms")
AddEventHandler("Storm:NoPerms", function()
    notify(StormConfig.NoPerms)
end)

function blackoutloop()
    Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000 * 62)
        SetBlackout(true)
        Citizen.Wait(8000)
        SetBlackout(false)
        Citizen.Wait(3000)
        SetBlackout(true)
        Citizen.Wait(2000)
        SetBlackout(false)
        Citizen.Wait(1000)
        SetBlackout(true)
          end
    end)
end

