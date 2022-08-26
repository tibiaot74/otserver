function onUse(cid, item, frompos, item2, topos)
	if item.uid==25027 then
		newpos = {x=1216, y=1120, z=7}
		doPlayerSendTextMessage(cid,22,"MWahaha! Yoh tak wrong!")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end