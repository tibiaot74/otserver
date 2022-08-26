function onUse(cid, item, frompos, item2, topos)
ITEMCONTAINER = {2562, 2571, 2572, 2573, 2574, 2575, 2576, 2577, 2032, 2033, 3941, 3942, 2005, 2006, 2007, 2008, 2009, 2011, 2012, 2013, 2014, 2015, 2023, 2031, 2034, 1775}
GAINWATER = {1771, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 4664, 4665, 4666, 4820, 4821, 4822, 4823, 4824, 4825, 490, 4828, 4829, 4830, 4831, 1338, 1339}
MILL = {1381, 1382, 1383, 1384}
OVENON = {1786, 1788, 1790, 1792}
OVENOFF = {1787, 1789, 1791, 1793}

WHEATITEM = {2694}
DOUGHITEM = {2693}
FLOURITEM = {2692}

topos = {x=topos.x, y=topos.y, z=topos.z}

--Wheat--
if isInArray(WHEATITEM, item.itemid) == TRUE then
	if isInArray(MILL, item2.itemid) == TRUE then
	doSendMagicEffect(topos, 2)
	doTransformItem(item.uid, 2692)
	end
	
------
--Flour--	
elseif isInArray(FLOURITEM, item.itemid) == TRUE then
	if isInArray(ITEMCONTAINER, item2.itemid) == TRUE and item2.type == TRUE then
	doChangeTypeItem(item2.uid, 0)
	doTransformItem(item.uid, 2693)
	elseif isInArray(OVENOFF, item2.itemid) == TRUE then
	doPlayerSendTextMessage(cid,22,"The oven must be on, else you can't bake.")
	end
------	
--Dough--
elseif isInArray(DOUGHITEM, item.itemid) == TRUE then
	if isInArray(OVENON, item2.itemid) == TRUE then
	doTransformItem(item.uid, 2689)
	elseif isInArray(OVENOFF, item2.itemid) == TRUE then
	doPlayerSendTextMessage(cid,22,"The oven must be on, else you can't bake.")
	end
------

end
	return 1
end

