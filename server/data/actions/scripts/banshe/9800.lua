function onUse(cid, item, fromPosition, itemEx, toPosition)
flamepos = {x = 32223, y = 31870, z = 14}
	if(item.actionid  == 9800) then
		if getPlayerStorageValue(cid, 9800) >= 1 and getPlayerStorageValue(cid, 9900) >= 1 and getPlayerStorageValue(cid, 9100) >= 1 and getPlayerStorageValue(cid, 9120) >= 1 and getPlayerStorageValue(cid, 9170) >= 1 and getPlayerStorageValue(cid, 9180) >= 1 then
		doTeleportThing(cid, flamepos)
		else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You did not all seals.")
		end
	end
	return true
end