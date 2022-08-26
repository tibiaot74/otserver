function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32857, y = 32289, z = 9}
    if isPlayer(cid) and item.actionid == 51930 then
	doTeleportThing(cid,rockPos)
    end
end