function onStepIn(cid, item, position, lastPosition)
		if getPlayerItemCount(cid, 2348) > 0 then
			doTeleportThing(cid,{x = 33051, y = 32777, z = 14})
		else
			doTeleportThing(cid,{x = 33133, y = 32642, z = 8})
			doPlayerSendTextMessage(cid,22,"You don't deserve this reward yet!")
		end
	return true
end