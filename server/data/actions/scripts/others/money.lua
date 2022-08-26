function onUse(cid, item, frompos, item2, topos)
--Gold Coins--
   	if item.itemid == 2148 and item.type == 100 then
   	doRemoveItem(item.uid, item.type)
   	doPlayerAddItem(cid,2152,1)

--Platinum Coin--	
	elseif item.itemid == 2152 and item.type == 100 then
   	doRemoveItem(item.uid, item.type)
   	doPlayerAddItem(cid,2160,1)
	elseif item.itemid == 2152 and item.type <= 99 then
   	doRemoveItem(item.uid, 1)
   	doPlayerAddItem(cid,2148,100)
	
--Crystal Coin--
	elseif item.itemid == 2160 and item.type <= 100 then
   	doRemoveItem(item.uid, 1)
   	doPlayerAddItem(cid,2152,100)
	end	
return true
end