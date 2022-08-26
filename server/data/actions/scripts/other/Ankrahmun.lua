--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if item.uid==50108 then
		newpos = {x=33195, y=32853, z=8}
		doPlayerSetTown(cid, 6)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Ankrahmun.")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end