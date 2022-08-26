function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.uid == 3115) then
		if(getPlayerStorageValue(cid, 250) >= 10) then
			if(item.itemid == 1225) then
				doTeleportThing(cid, toPosition, true)
				doTransformItem(item.uid, item.itemid + 1)
			end
				else
		doPlayerSendTextMessage(cid,22,'The door is sealed against unwanted intruders.')	
		end
	end
	return true
end