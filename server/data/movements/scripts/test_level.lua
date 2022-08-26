function onStepIn(cid, item, pos, topos)
if isPlayer(cid) == TRUE then
	if item.itemid == 1650 then
	doPlayerSendTextMessage(cid,19,"Back off!")
	newposition = {x = topos.x, y = topos.y, z = topos.z}
	doTeleportThing(cid, newposition)	
	else
	position = getPlayerPosition(cid)
	newposition = {x = position.x, y = position.y+2, z = position.z}
	doPlayerSendTextMessage(cid,19,"Only premium players may use depot!")
	doTeleportThing(cid, newposition)
	doSendMagicEffect(newposition, 12)
	end
	end
end
