function onUse(cid, item, frompos, item2, topos)
	if item.uid==25029 then
		newpos = {x=1195, y=1093, z=9}
		doPlayerSendTextMessage(cid,22,"congratulations!")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end