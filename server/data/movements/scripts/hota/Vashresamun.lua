function onStepIn(cid, item, position, lastPosition)
		if getPlayerItemCount(cid, 2349) > 0 then
			doTeleportThing(cid,{x = 33146, y = 32666, z = 15})
		else
			doTeleportThing(cid,{x = 33206, y = 32592, z = 8})
			doPlayerSendTextMessage(cid,22,"You don't deserve this reward yet!")
		end
	return true
end