function onStepIn(cid, item, position, fromPosition)


if item.actionid == 501 then
position = getPlayerPosition(cid)
newposition = {x = position.x, y = position.y, z = position.z+1}
doTeleportThing(cid, newposition)
	
elseif item.actionid == 502 then
doPlayerSendTextMessage(cid,22,"message")






end
	return TRUE
end

function onStepOut(cid, item, position, fromPosition)


if item.actionid == 501 then
	if getPlayerStorageValue(cid,501) == -1 or getPlayerStorageValue(cid,501) == 0 then
	firefield = {x=2000, y=1998, z=7, stackpos=1}
	doSendMagicEffect(firefield,15)
	setPlayerStorageValue(cid,501,1)
	end

end
	return TRUE
end
