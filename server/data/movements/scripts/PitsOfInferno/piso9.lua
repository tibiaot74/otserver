function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32726, y = 32512, z = 15}
    if isPlayer(cid) and item.actionid == 51942 then
	doTeleportThing(cid,rockPos)
    end
end