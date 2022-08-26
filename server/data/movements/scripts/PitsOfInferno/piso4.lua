function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32855, y = 32295, z = 9}
    if isPlayer(cid) and item.actionid == 51926 then
	doTeleportThing(cid,rockPos)
    end
end