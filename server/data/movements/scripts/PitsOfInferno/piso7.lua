function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32858, y = 32297, z = 9}
    if isPlayer(cid) and item.actionid == 51929 then
	doTeleportThing(cid,rockPos)
    end
end