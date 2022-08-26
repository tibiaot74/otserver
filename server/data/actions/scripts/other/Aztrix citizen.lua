function onUse(cid, item, frompos, item2, topos)
	if item.uid==25006 then
		newpos = {x=1476, y=927, z=7}
		doPlayerSetTown(cid, 15)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Aztrix.")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end