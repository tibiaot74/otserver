function onStepIn(cid, item, position, lastPosition)
		if getPlayerItemCount(cid, 2350) > 0 then
			doTeleportThing(cid,{x = 33182, y = 32715, z = 14})
		else
			doTeleportThing(cid,{x = 33231, y = 32705, z = 7})
			doPlayerSendTextMessage(cid,22,"You don't deserve this reward yet!")
		end
	return true
end