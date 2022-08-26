local exhaust = createConditionObject(CONDITION_EXHAUSTED)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, 500)

local drunk = createConditionObject(CONDITION_DRUNK)
setConditionParam(drunk, CONDITION_PARAM_TICKS, 120000)

local poison = createConditionObject(CONDITION_POISON)
setConditionParam(poison, CONDITION_PARAM_DELAYED, 10)
addDamageCondition(poison, 40, 4000, -3)

function onUse(cid, item, frompos, item2, topos)
ITEMCONTAINER = {2562, 2571, 2572, 2573, 2574, 2575, 2576, 2577, 2032, 2033, 3941, 3942, 2005, 2006, 2007, 2008, 2009, 2011, 2012, 2013, 2014, 2015, 2023, 2031, 2034, 1775}
GAINWATER = {1771, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 4664, 4665, 4666, 4820, 4821, 4822, 4823, 4824, 4825, 490, 4828, 4829, 4830, 4831, 1368, 1369}
GAINLEMONADE = {1776}
GAINBEER = {1772}
GAINWINE = {1773, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785}
GAINSLIME = {2807, 2848, 2857, 2897, 2899, 2908, 3004, 3010, 3011, 3052, 3733, 3734, 3735, 3736, 4260, 4280, 4296, 4320, 4326, 4393}
if(hasCondition(cid, CONDITION_EXHAUSTED) == TRUE) then
doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
return TRUE
end



--switch vial container--
if item.type >= 1 and isInArray(ITEMCONTAINER, item2.itemid) == 1 then
	if item2.type == 0 then
	doChangeTypeItem(item2.uid, item.type)
	doChangeTypeItem(item.uid, 0)
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
-------------------------

--None--
elseif item.type == 0 then --None
	if isInArray(GAINWATER, item2.itemid) == 1 or item2.itemid >= 4632 and item2.itemid <= 4663 then
	doChangeTypeItem(item.uid, 1)
	elseif isInArray(GAINSLIME, item2.itemid) == 1 then
	doChangeTypeItem(item.uid, 4)
	elseif item2.itemid > 2806 and item2.itemid < 3132 or item2.itemid >= 4251 and item2.itemid <= 4327 then
		if isInArray(GAINSLIME, item2.itemid) == 1 then
		else
		doChangeTypeItem(item.uid, 2)
		end
	elseif isInArray(GAINLEMONADE, item2.itemid) == 1 then
	doChangeTypeItem(item.uid, 5)
	elseif isInArray(GAINBEER, item2.itemid) == 1 then
	doChangeTypeItem(item.uid, 3)
	elseif isInArray(GAINWINE, item2.itemid) == 1 then
	doChangeTypeItem(item.uid, 15)
	end
------
--Water--	
elseif item.type == 1 then --Water
	if item2.uid == cid then
	doPlayerSay(cid, "Gulp.", 1)
		if getPlayerStorageValue(cid, 253) == 1 and item.itemid == 2006 then
		doRemoveItem(item.uid)
		else
		doChangeTypeItem(item.uid, 0)
		end
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------	
--Blood--
elseif item.type == 2 then --Blood
	if item2.uid == cid then
	doPlayerSay(cid, "Gulp.", 1)
		if getPlayerStorageValue(cid, 253) == 1 and item.itemid == 2006 then
		doRemoveItem(item.uid)
		else
		doChangeTypeItem(item.uid, 0)
		end
	elseif item2.actionid == 4107 then
	doChangeTypeItem(item.uid, 0)
	doTeleportThing(cid,{x=32791, y=32334, z=10})
	doSendMagicEffect({x=32791, y=32334, z=10},12)	
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------
--Beer--
elseif item.type == 3 then --Beer
	if item2.uid == cid then
	doPlayerSay(cid, "Aah...", 1)
	doAddCondition(cid, drunk)
		if getPlayerStorageValue(cid, 253) == 1 and item.itemid == 2006 then
		doRemoveItem(item.uid)
		else
		doChangeTypeItem(item.uid, 0)
		end
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------
--Slime--
elseif item.type == 4 then --Slime
	if item2.uid == cid then
	doPlayerSay(cid, "Urgh!", 1)
	doAddCondition(cid, poison)
		if getPlayerStorageValue(cid, 253) == 1 and item.itemid == 2006 then
		doRemoveItem(item.uid)
		else
		doChangeTypeItem(item.uid, 0)
		end
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------
--Lemonade--
elseif item.type == 5 then --Lemonade
	if item2.uid == cid then
	doPlayerSay(cid, "Mmmh.", 1)
		if getPlayerStorageValue(cid, 253) == 1 and item.itemid == 2006 then
		doRemoveItem(item.uid)
		else
		doChangeTypeItem(item.uid, 0)
		end
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------
--Milk--
elseif item.type == 6 then --Milk
	if item2.uid == cid then
	doPlayerSay(cid, "Mmmh.", 1)
		if getPlayerStorageValue(cid, 253) == 1 and item.itemid == 2006 then
		doRemoveItem(item.uid)
		else
		doChangeTypeItem(item.uid, 0)
		end
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------
--Mana--
elseif item.type == 7 then --Mana
	if item2.uid == cid then
	new_mana = math.random(40, 70)
	doPlayerAddMana(cid, new_mana)
	doSendMagicEffect(topos, 12)
	doPlayerSay(cid, "Aaaah...", 1)
	doAddCondition(cid, exhaust)
		doChangeTypeItem(item.uid, 0)
	DidUseMana(cid, frompos, topos)
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------
--???--
elseif item.type == 8 then -- ?.
doChangeTypeItem(item.uid, 0)
------
--???--
elseif item.type == 9 then --Water?.
doChangeTypeItem(item.uid, 0)
------

elseif item.type == 10 then --Life
	if item2.uid == cid then
	new_life = math.random(55, 105)
	doPlayerAddHealth(cid, new_life)
	doSendMagicEffect(topos, 12)
	doPlayerSay(cid, "Aaaah...", 1)
	doAddCondition(cid, exhaust)
		doChangeTypeItem(item.uid, 0)
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------
--oil--
elseif item.type == 11 then --Oil
	if item2.uid == cid then
	doPlayerSay(cid, "Urgh!", 1)
		if getPlayerStorageValue(cid, 253) == 1 and item.itemid == 2006 then
		doRemoveItem(item.uid)
		else
		doChangeTypeItem(item.uid, 0)
		end
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------
--???--
elseif item.type == 12 then --Smile?.
doChangeTypeItem(item.uid, 0)
------
--Urine--
elseif item.type == 13 then --Urine
	if item2.uid == cid then
	doPlayerSay(cid, "Urgh!", 1)
		if getPlayerStorageValue(cid, 253) == 1 and item.itemid == 2006 then
		doRemoveItem(item.uid)
		else
		doChangeTypeItem(item.uid, 0)
		end
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------
--???--
elseif item.type == 14 then -- ?.
doChangeTypeItem(item.uid, 0)
------
--Wine--
elseif item.type == 15 then --Wine
	if item2.uid == cid then
	doPlayerSay(cid, "Aah...", 1)
	doAddCondition(cid, drunk)
		if getPlayerStorageValue(cid, 253) == 1 and item.itemid == 2006 then
		doRemoveItem(item.uid)
		else
		doChangeTypeItem(item.uid, 0)
		end
	else
	doChangeTypeItem(item.uid, 0)
	splash = doCreateItem(2025, item.type, topos)
	doDecayItem(splash.uid)	
	end
------

end
	return 1
end

