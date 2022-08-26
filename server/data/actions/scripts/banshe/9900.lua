function onUse(cid, item, fromPosition, itemEx, toPosition)
flamepos = {x = 32245, y = 31861, z = 14}
	if(item.actionid  == 9900) then
		if getPlayerStorageValue(cid, 20007) >= 1 then
		doTeleportThing(cid, flamepos)
		else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Talk to the queen of the banshee.")
		end
	end
	return true
end