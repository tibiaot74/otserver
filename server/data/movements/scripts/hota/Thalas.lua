function onStepIn(cid, item, position, lastPosition)
		if getPlayerItemCount(cid, 2351) > 0 then
			doTeleportThing(cid,{x = 33349, y = 32830, z = 14})
		else
			doTeleportThing(cid,{x = 33280, y = 32740, z = 10})
			doPlayerSendTextMessage(cid,22,"You don't deserve this reward yet!")
		end
	return true
end