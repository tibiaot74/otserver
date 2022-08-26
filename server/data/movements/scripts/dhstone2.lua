local players = 0
local rockPos = {x = 33210, y = 31630, z = 13}
local rockPos1 = {x = 33211, y = 31630, z = 13}
local rockPos2 = {x = 33212, y = 31630, z = 13}
local rockId = 1052
local rockId1 = 1052
local rockId2 = 1052

function onStepIn(cid, item, position, fromPosition)
   players = players + 1
    local rock = getTileItemById(rockPos, rockId)
    local rock1 = getTileItemById(rockPos1, rockId1)
    local rock2 = getTileItemById(rockPos2, rockId2)
	
    if players >= 2 and rock.uid > 0  and rock1.uid > 0 and rock2.uid > 0 then
        doRemoveItem(rock.uid, 1)
		doRemoveItem(rock1.uid, 1)
		doRemoveItem(rock2.uid, 1)
		doTransformItem(item.uid, item.itemid-1)
    end
end

function onStepOut(cid, item, position, fromPosition)
    players = players - 1
    local rock = getTileItemById(rockPos, rockId)
    local rock1 = getTileItemById(rockPos1, rockId1)
    local rock2 = getTileItemById(rockPos2, rockId2)
	
    if players < 2 and rock.uid <= 0 and rock1.uid <= 0 and rock2.uid <= 0 then
        doCreateItem(rockId, 1, rockPos)
		doCreateItem(rockId1, 1, rockPos1)
		doCreateItem(rockId2, 1, rockPos2)
		doTransformItem(item.uid, item.itemid+1)
    end
end