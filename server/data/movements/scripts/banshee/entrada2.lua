function onStepIn(cid, item, frompos, item2, topos) 
	wall2 = {x=32259, y=31890, z=10, stackpos=1}
wallpos2 = {x=32259, y=31890, z=10} 	
	getwall2 = getThingfromPos(wall1) 

if item.actionid == 9996 and getwall1.itemid == 1498 then
	doPlayerSendCancel(cid,"Sorry, not possible.")
	else
	doCreateItem(1498, 1, wallpos2)		
	end
		return true
	end
