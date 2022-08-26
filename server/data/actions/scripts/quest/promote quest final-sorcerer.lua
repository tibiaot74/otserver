function onUse(cid, item, frompos, item2, topos)
	if item.uid==26006 then
		newpos = {x=32957, y=32076, z=7}
doPlayerSetVocation(cid,5)
		doPlayerSendTextMessage(cid,22,"Congratulations! You are now an Master Sorcerer!")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end