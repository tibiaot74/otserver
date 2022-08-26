function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,81431) <= 0 then
		if getPlayerFreeCap(cid) <= 20 then
		doPlayerSendTextMessage(cid,22,"You need 20 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found family brooch..")
		doPlayerAddItem(cid, 2318, 1)
		setPlayerStorageValue(cid,81431,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
return TRUE
end	