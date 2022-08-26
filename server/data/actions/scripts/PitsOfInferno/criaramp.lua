local pos = {
	[1] = {x = 32861, y = 32305, z = 11, stackpos = 0},
	[2] = {x = 32861, y = 32306, z = 11, stackpos = 0},
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
		if(item.actionid == 51922) and (item.itemid == 1945) then
			newPos = {x = pos[1].x, y = pos[1].y, z = pos[1].z, stackpos = 1}
			newPos1 = {x = pos[2].x, y = pos[2].y, z = pos[2].z, stackpos = 1}
			for i = 1, 2 do
				doRemoveItem(getThingfromPos(newPos).uid)
				doRemoveItem(getThingfromPos(newPos1).uid)
			doCreateItem(1284,1,pos[1])
			doCreateItem(1284,1,pos[2])
			end
			doTransformItem(item.uid, 1946)
		elseif(item.actionid == 51922) and (item.itemid == 1946) then
			doTransformItem(getThingfromPos(pos[1]).uid, 4816)
			doTransformItem(getThingfromPos(pos[2]).uid, 4818)
			doCreateItem(598,1,pos[1])
			doCreateItem(598,1,pos[2])
			doTransformItem(item.uid, 1945)
		end
	return true
end