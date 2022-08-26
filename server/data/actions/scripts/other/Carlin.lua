--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if item.uid==50102 then
		newpos = {x=32360, y=31782, z=7}
		doPlayerSetTown(cid, 5)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Carlin")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end