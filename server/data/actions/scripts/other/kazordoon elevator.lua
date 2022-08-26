function onUse(cid, item, frompos, item2, topos)
	if item.uid==25275 then
		newpos = {x=32636, y=31881, z=2}
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end