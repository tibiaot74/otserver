function onStepIn(cid, item, position, fromPosition)
	sangue = {x=32791, y=32333, z=9, stackpos=1}	
	getsangue = getThingfromPos(sangue)
    if isPlayer(cid) and item.uid == 4652 and getsangue.itemid == 2016 then
	doTeleportThing(cid, {x=32791, y=32334, z=10})
	else
		doPlayerSendCancel(cid,"Sorry, not possible.")
    end
end