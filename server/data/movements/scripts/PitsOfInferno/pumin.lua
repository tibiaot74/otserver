function onStepIn(cid, item, position, fromPosition)
	if not isPlayer(cid) then
		return true
	end

	if getPlayerStorageValue(cid,55874012) >= 9 then
		doTeleportThing(cid,{x = 32767, y = 32428, z = 15})
	else
		doTeleportThing(cid,fromPosition)
		doPlayerSendTextMessage(cid,19,'To enter Pumin\'s domain you must gain permission from the bureaucrats.')
	end
	return true
end
