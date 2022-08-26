function onStepIn(cid, item, position, lastPosition)
		if getPlayerItemCount(cid, 2353) > 0 then
			doTeleportThing(cid,{x = 33174, y = 32937, z = 15})
		else
			doTeleportThing(cid,{x = 33255, y = 32836, z = 8})
			doPlayerSendTextMessage(cid,22,"You don't deserve this reward yet!")
		end
	return true
end