function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32726, y = 32499, z = 14}
    if isPlayer(cid) and item.actionid == 51945 then
	doTeleportThing(cid,rockPos)
    end
end