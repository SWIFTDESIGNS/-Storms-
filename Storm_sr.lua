
RegisterServerEvent("Storm:Message")
AddEventHandler("Storm:Message", function(param)
    if IsPlayerAceAllowed(source, "Storm.cmds") then
    TriggerClientEvent("chatMessage", -1, StormConfig.Message1)
    Citizen.Wait(1000 * 120)
    TriggerClientEvent("chatMessage", -1, StormConfig.Message2)
    Citizen.Wait(1000 * 180)
    TriggerClientEvent("chatMessage", -1, StormConfig.Message3)
    Citizen.Wait(1000 * 60)
    TriggerClientEvent("chatMessage", -1, StormConfig.Message4)
else
    TriggerClientEvent("Storm:NoPerms",source)
end
end)

RegisterServerEvent("Storm:Finished")
AddEventHandler("Storm:Finished",function(param)
    if IsPlayerAceAllowed(source, "Storm.cmds") then
    TriggerClientEvent("chatMessage", -1, StormConfig.StopMessage)
else
   TriggerClientEvent("Storm:NoPerms",source)
end
end)


