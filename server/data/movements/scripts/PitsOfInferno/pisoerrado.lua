function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32853, y = 32319, z = 9}
    if isPlayer(cid) and item.actionid == 51931 then
	doTeleportThing(cid,rockPos)
    end
end