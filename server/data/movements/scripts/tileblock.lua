function onStepIn(cid, item, position, fromPosition)
    if isPlayer(cid) then
	doTeleportThing(cid,fromPosition)
	end
end