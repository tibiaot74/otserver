function onUse(cid, item, frompos, item2, topos)
	if item.itemid == 1241 then
		if getPlayerStorageValue(cid,12109) == 5 then
			doTransformItem(item.uid, item.itemid+1)
			setPlayerStorageValue(cid,12109,0)
		else
			doPlayerSendTextMessage(cid,22,"You first must play the instruments in correct order to get the access!")
		end
	end
	return true
end	