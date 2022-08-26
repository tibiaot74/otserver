function onStepIn(cid, item, position, fromPosition)

local config = {
msgDenied = "druids only has access to this place.",
pos = {x=32851, y=32339, z=6},
msgWelcome = "Seja Bem Vindo a Area vip."
}

if(not isDruid(cid)) then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, config.msgDenied)
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return TRUE
end
doTeleportThing(cid,config.pos)
return TRUE
end