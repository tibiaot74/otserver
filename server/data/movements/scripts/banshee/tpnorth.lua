function onStepIn(cid, item, pos)
	if item.itemid == 355 then
		pos.y = pos.y-1
		doTeleportThing(cid, pos)
	else
		doPlayerSendCancel(cid, "")
	end

	return true
end
