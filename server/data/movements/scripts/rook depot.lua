function onStepIn(cid, item, pos, topos)
if isPlayer(cid) == TRUE then
if getPlayerStorageValue(cid, 251) == 2 then
else
position = getPlayerPosition(cid)
newposition = {x = position.x, y = position.y+2, z = position.z}
doPlayerSendTextMessage(cid,19,"Only premium players may use depot!")
doTeleportThing(cid, newposition)
doSendMagicEffect(newposition, 12)
end
end
end
