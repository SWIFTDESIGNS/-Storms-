StormConfig = {}
StormConfig = setmetatable(StormConfig, {})

StormConfig.ActiveCommand = "In" 
StormConfig.InActiveCommand = "Out"
 
StormConfig.Perms = "~g~[BCCRP]You have started a storm!"
StormConfig.NoPerms = "~r~Insufficient Permissions"

StormConfig.InProgress = "~y~Do [/StormStop] before creating another Storm!"
StormConfig.Stopped = "~y~Storm Stopped do [/StormStart] to create a Storm!"

  StormConfig.Message1 = "^1[National-Alert]Just now Hurricane labour is moving into san andreas please start preparing!"
  StormConfig.Message2 =  "^1[National-Alert]We are now hearing Hurricane labour has intense winds & rain we would advise staying in doors"
  StormConfig.Message3 =  "^1[National-Alert]THIS IS NOT A TEST GET COVER IMMDIATELY!"
  StormConfig.Message4 =  "^1[National-Alert]We are getting reports the power grid has been hit by lightning!"

  StormConfig.StopMessage = "^2[National-Alert]Hurricane Labour has now washed up, you are now clear to leave your homes"



  function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end