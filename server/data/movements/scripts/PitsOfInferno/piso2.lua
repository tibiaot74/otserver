function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32827, y = 32314, z = 9}
    if isPlayer(cid) and item.actionid == 51924 then
	doTeleportThing(cid,rockPos)
    end
end