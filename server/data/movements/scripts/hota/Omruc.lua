function onStepIn(cid, item, position, lastPosition)
		if getPlayerItemCount(cid, 2352) > 0 then
			doTeleportThing(cid,{x = 33178, y = 33016, z = 14})
		else
			doTeleportThing(cid,{x = 33025, y = 32872, z = 8})
			doPlayerSendTextMessage(cid,22,"You don't deserve this reward yet!")
		end
	return true
end