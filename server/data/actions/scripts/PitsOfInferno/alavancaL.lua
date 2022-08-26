function onUse(cid, item, frompos, item2, topos)
	wall1 = {x=32874, y=32359, z=14, stackpos=1}	
	getwall1 = getThingfromPos(wall1)
	
	pedra1 = {x=32851, y=32333, z=12, stackpos=1}
	pedra2 = {x=32852, y=32333, z=12, stackpos=1}	
	getpedra1 = getThingfromPos(pedra1)
	getpedra2 = getThingfromPos(pedra2)
	
	if item.itemid == 1945 and getwall1.itemid == 1946 then
		doTransformItem(item.uid,item.itemid+1)
		doRemoveItem(getpedra1.uid,1)
		doRemoveItem(getpedra2.uid,1)
	elseif item.itemid == 1946 then
		doTransformItem(item.uid,item.itemid-1)	
	else
		doPlayerSendCancel(cid,"Sorry, not possible.")
	end

	return 1
end