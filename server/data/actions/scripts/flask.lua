function onUse(cid, item, frompos, item2, topos)
	
local bloodpay = 2009

	if item2.itemid == 2956 then
		if getPlayerStorageValue(cid,4002) == 11 then
			if doPlayerRemoveItem(cid, bloodpay, 1) == 1 then 
			doPlayerSendTextMessage(cid,21,"MWAHAHAHA")	
			doPlayerAddItem(cid,2178,0)
			doSendMagicEffect(newpos,15)
			setPlayerStorageValue(cid,4002,12)
			end
		end
	else
	doPlayerSendTextMessage(cid,21,"you must use it on a fresh vampire corpse!")
	return 0
	end

	doDecayItem(item2.uid)
	
	return 1
end