function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32854, y = 32323, z = 9}
    if isPlayer(cid) and item.actionid == 51928 then
	doTeleportThing(cid,rockPos)
    end
end