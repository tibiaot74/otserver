   function onUse(cid, item, frompos, item2, topos)
	cashtype = math.random(1,100)
	cash = math.random(1,100)
	doSendMagicEffect(frompos,2)
	if cashtype >= 0 and cashtype <= 70 then
		doPlayerAddItem(cid,2152,1)
	elseif cashtype > 70 then
		doPlayerAddItem(cid,2148,1)
		   	doTransformItem(item.uid,item.itemid+1)
	end

   	return 1
   
   end