function onStepIn(cid, item, position, lastPosition)
		if getPlayerItemCount(cid, 2354) > 0 then
			doTeleportThing(cid,{x = 33126, y = 32592, z = 15})
		else
			doTeleportThing(cid,{x = 33131, y = 32566, z = 8})
			doPlayerSendTextMessage(cid,22,"You don't deserve this reward yet!")
		end
	return true
end