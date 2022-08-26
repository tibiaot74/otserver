function onStepIn(cid, item, position, fromPosition)

local config = {
msgDenied = "sorcerer only has access to this place.",
msgWelcome = "Seja Bem Vindo a Area vip."
}

if(not isSorcerer(cid)) then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, config.msgDenied)
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return TRUE
end
return TRUE
end