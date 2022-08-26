function onUse(cid, item, frompos, item2, topos)

aID = 44444 --Action Id the ground tile must have to turn into a hole.
ticks = 120 --How many seconds the hole will last before turning into a normal tile again
topos = {x=topos.x, y=topos.y, z=topos.z}
GRASS = {4526, 4527, 4528, 4529, 4530, 4531, 4532, 4533, 4534, 4535, 4536, 4537, 4538, 4529, 4540, 4541, 4567, 4568, 4569, 4756}
DIRT = {351, 352, 353, 354, 355}
SNOW = {671, 6683, 6684, 6685, 6686, 7002}
DENY = {383, 384, 385, 392, 418, 469, 470, 482, 484, 485, 489}
CHANCE = math.random(1,300)

if item2.actionid == aID then
	if isInArray(GRASS, item2.itemid) == 1 then
		doTransformItem(item2.uid,470)
	elseif isInArray(DIRT, item2.itemid) == 1 then
		doTransformItem(item2.uid,383)
	elseif item2.itemid == 231 then
		if CHANCE <= 25 then
		doSendMagicEffect(topos, 2)
		else
		doSendMagicEffect(topos, 2)
		doTransformItem(item2.uid,482)
		end
	elseif isInArray(SNOW, item2.itemid) == 1 then
		doTransformItem(item2.uid,485)
		elseif isInArray(DENY, item2.itemid) == 1 then
		doPlayerSendTextMessage(cid,23,"Sorry! not possible.")	
	else
		doCreateItem(3324, 1, topos)
		doDecayItemTo(topos, 0, ticks) 
	end
elseif(isInArray(HOLES, item2.itemid)) then
		if(item2.itemid ~= 8579) then
			item2.itemid = item2.itemid + 1
		else
			item2.itemid = 8585
		end

		doTransformItem(item2.uid, item2.itemid)
		doDecayItem(item2.uid)
		return true
elseif item2.actionid <= 0 then
if item2.itemid == 231 then
	if getPlayerVocation(cid) >= 1 and getPlayerVocation(cid) <= 8 then
		if math.random(1, 100) > 95 then
		doSendMagicEffect(topos, 2)
		doCreateMonster("Scarab", topos)
		elseif math.random(1, 100) > 95 then
		doSendMagicEffect(topos, 2)
		doCreateItem(2159,1, topos)
		else
		doSendMagicEffect(topos, 2)
		end
	end
elseif item2.itemid == 468 then		
		doTransformItem(item2.uid,469)
elseif item2.itemid == 481 then		
		doTransformItem(item2.uid,482)
elseif item2.itemid == 293 then		
		doTransformItem(item2.uid,294)
end
end
return true
end

