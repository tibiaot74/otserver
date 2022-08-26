function onStepIn(cid, item, position, fromPosition)
local rockPos = {x = 32854, y = 32321, z = 11, stackpos=1}
    if isPlayer(cid) and item.actionid == 51923 then
        doCreateItem(1386, 1, rockPos)
		doTransformItem(item.uid, item.itemid-1)
    end
end

function onStepOut(cid, item, position, fromPosition)
local rockPos = {x = 32854, y = 32321, z = 11, stackpos=1}
local rock = getThingfromPos(rockPos)
    if isPlayer(cid) and item.actionid == 51923 then
        doRemoveItem(rock.uid, 1)
		doTransformItem(item.uid, item.itemid+1)
    end
end