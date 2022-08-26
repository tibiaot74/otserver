function onUse(cid, item, frompos, item2, topos)

aID = 55555 --Action Id the ground tile must have to turn into a hole.
ticks = 120 --How many seconds the hole will last before turning into a normal tile again
topos = {x=topos.x, y=topos.y, z=topos.z}
GRASS = {4526, 4527, 4528, 4529, 4530, 4531, 4532, 4533, 4534, 4535, 4536, 4537, 4538, 4529, 4540, 4541, 4567, 4568, 4569, 4756}
DIRT = {351, 352, 353, 354, 355}
SNOW = {671, 6683, 6684, 6685, 6686, 7002}
DENY = {383, 384, 385, 392, 418, 469, 470, 482, 484, 485, 489}

if item2.actionid == aID then
	if isInArray(GRASS, item2.itemid) == 1 then
		doTransformItem(item2.uid,470)
	elseif isInArray(DIRT, item2.itemid) == 1 then
		doTransformItem(item2.uid,383)
	elseif item2.itemid == 231 then
		doTransformItem(item2.uid,482)
	elseif isInArray(SNOW, item2.itemid) == 1 then
		doTransformItem(item2.uid,485)
	elseif isInArray(DENY, item2.itemid) == 1 then
		doPlayerSendTextMessage(cid,23,"Sorry! not possible.")
	else
		doCreateItem(383, 1, topos)
	end
elseif item2.itemid == 7200 then
	doTransformItem(item2.uid,7236)

elseif item2.actionid == 8090 and item2.itemid == 1304 then
CHANCESTONE = math.random(1,10)
PLAYERHEALTH = math.random(10,67)
	if CHANCESTONE <= 2 then
	doTransformItem(item2.uid,383)
	doSendMagicEffect(topos, 3)
	doCreatureAddHealth(cid, -PLAYERHEALTH)
	else
	doCreatureAddHealth(cid, -PLAYERHEALTH)
	doSendMagicEffect(topos, 2)
	end

end
return true
end