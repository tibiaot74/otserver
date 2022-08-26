function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32840, y = 32324, z = 9}
    if isPlayer(cid) and item.actionid == 51925 then
	doTeleportThing(cid,rockPos)
    end
end