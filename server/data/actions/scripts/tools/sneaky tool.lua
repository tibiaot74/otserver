local exhaust = createConditionObject(CONDITION_EXHAUSTED)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, 1500)

function onUse(cid, item, frompos, item2, topos)

aID = 44444 --Action Id the ground tile must have to turn into a hole.
ticks = 120 --How many seconds the hole will last before turning into a normal tile again
topos = {x=topos.x, y=topos.y, z=topos.z}
GRASS = {4526, 4527, 4528, 4529, 4530, 4531, 4532, 4533, 4534, 4535, 4536, 4537, 4538, 4529, 4540, 4541, 4567, 4568, 4569, 4756}
DIRT = {351, 352, 353, 354, 355}
SNOW = {671, 6683, 6684, 6685, 6686, 7002}
DENY = {383, 384, 385, 392, 418, 469, 470, 482, 484, 485, 489}
CHANCE = math.random(1,300)

if(hasCondition(cid, CONDITION_EXHAUSTED) == TRUE) then
doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
return TRUE
end

	if item2.itemid == 2739 then
		doTransformItem(item2.uid,2737)
		doDecayItem(item2.uid)
		doCreateItem(2694,1,topos)
	end
	
if item2.actionid == aID then
	if isInArray(GRASS, item2.itemid) == 1 then
		doTransformItem(item2.uid,470)
		doDecayItemTo(topos, item2.itemid, ticks)
	elseif isInArray(DIRT, item2.itemid) == 1 then
		doTransformItem(item2.uid,383)
		doDecayItemTo(topos, item2.itemid, ticks)
	elseif item2.itemid == 231 then
		if CHANCE <= 25 then
		doSendMagicEffect(topos, 2)
		else
		doSendMagicEffect(topos, 2)
		doTransformItem(item2.uid,482)
		doDecayItemTo(topos, item2.itemid, ticks)
		end
	elseif isInArray(SNOW, item2.itemid) == 1 then
		doTransformItem(item2.uid,485)
		doDecayItemTo(topos, item2.itemid, ticks)
		elseif isInArray(DENY, item2.itemid) == 1 then
		doPlayerSendTextMessage(cid,23,"Sorry! not possible.")	
	else
		doCreateItem(3324, 1, topos)
		doDecayItemTo(topos, 0, ticks) 
	end
elseif item2.itemid == 468 then
		doTransformItem(item2.uid,469)
		doDecayItemTo(topos, item2.itemid, ticks)
		
        elseif item2.itemid == 481 then
		doTransformItem(item2.uid,482)
		doDecayItemTo(topos, item2.itemid, ticks)

        elseif item2.itemid == 483 then
		doTransformItem(item2.uid,484)
		doDecayItemTo(topos, item2.itemid, ticks)

	elseif item2.itemid == 293 then
		doTransformItem(item2.uid,294)
elseif item2.actionid <= 0 then
if item2.itemid == 231 then
	if getPlayerVocation(cid) >= 1 and getPlayerVocation(cid) <= 8 then
		if CHANCE == 2 then
		doAddCondition(cid, exhaust)
		doSummonCreature("scarab", topos)
		doSendMagicEffect(topos, 2)
		else
		doSendMagicEffect(topos, 2)
		end
	end
elseif item2.itemid == 468 then		
		doTransformItem(item2.uid,469)
		doDecayItemTo(topos, item2.itemid, ticks)
elseif item2.itemid == 481 then		
		doTransformItem(item2.uid,482)
		doDecayItemTo(topos, item2.itemid, ticks)
elseif item2.itemid == 293 then		
		doTransformItem(item2.uid,294)
		doDecayItemTo(topos, item2.itemid, ticks)
end
end

topos = {x=topos.x, y=topos.y, z=topos.z}
	if item2.itemid == 2782 then
		doTransformItem(item2.uid,2781)
		doDecayItem(item2.uid)

	elseif item2.itemid == 3985 then
		doTransformItem(item2.uid,3984)
		doDecayItem(item2.uid)
		
	elseif item2.itemid == 3794 or item2.itemid == 3795 or item2.itemid == 3796 or item2.itemid == 3797 or item2.itemid == 3798 or item2.itemid == 3799 then
		doTransformItem(item2.uid, 3959)
	end

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
		doDecayItemTo(topos, item2.itemid, ticks)
	elseif isInArray(DIRT, item2.itemid) == 1 then
		doTransformItem(item2.uid,383)
		doDecayItemTo(topos, item2.itemid, ticks)
	elseif item2.itemid == 231 then
		doTransformItem(item2.uid,482)
		doDecayItemTo(topos, item2.itemid, ticks)
	elseif isInArray(SNOW, item2.itemid) == 1 then
		doTransformItem(item2.uid,485)
		doDecayItemTo(topos, item2.itemid, ticks)
	elseif isInArray(DENY, item2.itemid) == 1 then
		doPlayerSendTextMessage(cid,23,"Sorry! not possible.")
	else
		doCreateItem(3324, 1, topos)
		doDecayItemTo(topos, 0, ticks) 
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
end

