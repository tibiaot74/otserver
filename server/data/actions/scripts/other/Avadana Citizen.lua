function onUse(cid, item, frompos, item2, topos)
	if item.uid==25000 then
		newpos = {x=915, y=992, z=6}
		doPlayerSetTown(cid, 12)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Avadana.")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end