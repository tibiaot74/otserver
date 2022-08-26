function onUse(cid, item, frompos, item2, topos)
	if item.uid==26005 then
		newpos = {x=32957, y=32076, z=7}
doPlayerSetVocation(cid,6)
		doPlayerSendTextMessage(cid,22,"Congratulations! You are now an Elder Druid!")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end