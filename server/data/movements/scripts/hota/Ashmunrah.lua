function onStepIn(cid, item, frompos, item2, topos) 
	alav1 = {x=33175, y=32884, z=11, stackpos=255}
	alav2 = {x=33176, y=32880, z=11, stackpos=255}
	alav3 = {x=33182, y=32880, z=11, stackpos=255}
	alav4 = {x=33183, y=32884, z=11, stackpos=255}	
	newpos = {x = 33198, y = 32885, z = 11}
	getalav1 = getThingfromPos(alav1)
	getalav2 = getThingfromPos(alav2)
	getalav3 = getThingfromPos(alav3)
	getalav4 = getThingfromPos(alav4)	
	if getalav1.itemid == 1946 and getalav2.itemid == 1946 and getalav3.itemid == 1946 and getalav4.itemid == 1946 then
		doTeleportThing(cid, newpos)
		doRemoveItem(alav1.uid, 1)
		doRemoveItem(alav2.uid, 1)
		doRemoveItem(alav3.uid, 1)
		doRemoveItem(alav4.uid, 1)
doCreateItem(1945, 1, alav1)
doCreateItem(1945, 1, alav2)
doCreateItem(1945, 1, alav3)
doCreateItem(1945, 1, alav4)		
end

	return true
end

local pos_certa = {x = 33198, y = 32885, z = 11} -- Quando as alavancas estiverem na posição correta
local pos_errada = {x = 33179, y = 32889, z = 11} -- Quando as alavancas não estiverem na posição correta

local alavancas = {
	[1] = {x = 33175, y=32884, z=11},
	[2] = {x = 33176, y=32880, z=11},
	[3] = {x = 33182, y=32880, z=11},
	[4] = {x = 33183, y=32884, z=11},
}

local levers = { -- Estado inicial
	[1] = "e",
	[2] = "e",
	[3] = "e",
	[4] = "e",
}

local aux = {"e", "d"}

function onStepIn(cid)
	for id, pos in ipairs(alavancas) do
		local itemid = levers[id] == "e" and 1946 or 1945
		if getTileItemById(pos, itemid).uid < 100 then

			doTeleportThing(cid, pos_errada)

			return true
		end
	end



	doTeleportThing(cid, pos_certa, true)


	for id, pos in ipairs(alavancas) do
		local itemid = levers[id] == "e" and 1946 or 1945
		local lv = getTileItemById(pos, itemid).uid
		if lv > 100 then
			doTransformItem(lv, math.random(1945, 1946))
		end
	end
	return true
end