function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,80331) <= 0 then
		if getPlayerFreeCap(cid) <= 20 then
		doPlayerSendTextMessage(cid,22,"You need 20 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a silver key.")
	KEY = doPlayerAddItem(cid, 2088, 1)	--silver key Key (Black knight villa)
	doSetItemActionId(KEY, 2005)
	doSetItemSpecialDescription(KEY, "(Key: 5010)")
	setPlayerStorageValue(cid,80331,1)	
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
return TRUE
end	