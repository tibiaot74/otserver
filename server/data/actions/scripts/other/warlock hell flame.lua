function onUse(cid, item, frompos, item2, topos)
	if item.uid==25002 then
		newpos = {x=852, y=932, z=13}
		doPlayerSendTextMessage(cid,22,"MWAHAHA!! I love secrets! don\'t you?.")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end