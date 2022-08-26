function onUse(cid, item, frompos, item2, topos)
	if item.uid==25019 then
		newpos = {x=1525, y=973, z=9}
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end