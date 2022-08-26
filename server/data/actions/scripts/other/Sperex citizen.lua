function onUse(cid, item, frompos, item2, topos)
	if item.uid==25005 then
		newpos = {x=1258, y=1266, z=5}
		doPlayerSetTown(cid, 16)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Sperex.")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end