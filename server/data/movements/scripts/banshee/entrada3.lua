function onStepIn(cid, item, frompos, item2, topos) 
	wall1 = {x=32266, y=31860, z=11, stackpos=1}
	wall2 = {x=32266, y=31861, z=11, stackpos=1}	
	getwall1 = getThingfromPos(wall1)
	getwall2 = getThingfromPos(wall2)

if item.actionid == 9994 and getwall1.itemid == 1498 and getwall2.itemid == 1285 then
		doRemoveItem(getwall1.uid,1)
		doRemoveItem(getwall2.uid,1) 
	end
		return true
	end
