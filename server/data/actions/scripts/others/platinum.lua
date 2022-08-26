function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2152 and item.type == 100 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,2160,1)
   	elseif item.itemid == 2152 and item.type < 100 then
   		doRemoveItem(item.uid,1)
   		doPlayerAddItem(cid,2148,100)
	end
end
