function onStepIn(cid, item, pos)
	newpos = {x = 32273, y = 31849, z = 15}
	if item.actionid == 9023 then
		queststatus = getPlayerStorageValue(cid, 9017)
		if queststatus == -1 then
		doTeleportThing(cid, newpos)
		setPlayerStorageValue(cid, 9017, 1)
		setPlayerStorageValue(cid, 9170, 1)
		doSendMagicEffect(getCreaturePosition(cid), 10)
		else
			pos.y = pos.y+2
			doTeleportThing(cid, pos)
			doSendMagicEffect(pos, 10)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You already did this seal.")
		end
		return false
	end

	return true
end


