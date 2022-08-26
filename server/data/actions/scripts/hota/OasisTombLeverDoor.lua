function onUse(cid, item, fromPosition, item2, toPosition)
	if(item.itemid == 1945) then
		if(math.random(1, 3) == 1) then
			local carrotpos = {x = toPosition.x - 1, y = toPosition.y, z = toPosition.z, stackpos=2}
			local remover = getThingfromPos(carrotpos)
			doRemoveItem(remover.uid,1)
			doCreateItem(2684,1,carrotpos)
			doPlayerSendTextMessage(cid,22,"You found the carrot! The door is open!")
			doTransformItem(item.uid, item.itemid+1)
		else
			doPlayerSendTextMessage(cid,22,"you guess wrong! Take this! Carrot changed now the Hat!")
		end
	end
	if item.itemid == 1946 then
			doTransformItem(item.uid, item.itemid-1)	
	end		
return true
end
