function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,9980) <= 0 then
		if getPlayerFreeCap(cid) <= 20 then
		doPlayerSendTextMessage(cid,22,"You need 20 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag..")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfwolftoothchain, 1)
		doAddContainerItem(BAG, Cfdwarvenring, 1)
		setPlayerStorageValue(cid,9980,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
return TRUE
end	
