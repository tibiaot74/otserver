function onUse(cid, item, frompos, item2, topos)
	if doRemoveItem(item.uid,1) then
		doPlayerAddItem(cid,2152,100)
  	end
end
