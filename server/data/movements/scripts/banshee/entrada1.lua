function onStepIn(cid, item, frompos, item2, topos) 
	wall1 = {x=32259, y=31891, z=10, stackpos=1}
wallpos = {x=32259, y=31891, z=10} 	
	getwall1 = getThingfromPos(wall1) 

if item.actionid == 9995 and getwall1.itemid == 1498 then
	doPlayerSendCancel(cid,"Sorry, not possible.")
	else
	doCreateItem(1498, 1, wallpos)		
	end
		return true
	end
