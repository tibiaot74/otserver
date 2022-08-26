function onUse(cid, item, fromPosition, item2, toPosition)
local food1 = {x = 33117, y = 32761, z = 14, stackpos=2}
local tile1 = getThingfromPos(food1)
local food2 = {x = 33117, y = 32762, z = 14, stackpos=2}
local tile2 = getThingfromPos(food2)
local food3 = {x = 33117, y = 32763, z = 14, stackpos=2}
local tile3 = getThingfromPos(food3)

local chapeu1 = {x = 33117, y = 32761, z = 14, stackpos=2}
local remover1 = getThingfromPos(chapeu1)
local chapeu2 = {x = 33117, y = 32762, z = 14, stackpos=2}
local remover2 = getThingfromPos(chapeu2)
local chapeu3 = {x = 33117, y = 32763, z = 14, stackpos=2}
local remover3 = getThingfromPos(chapeu3)

	if item.itemid == 1243 and tile1.itemid == 2684 or tile2.itemid == 2684 or tile3.itemid == 2684 then
			doTransformItem(item.uid, item.itemid+1)
			doRemoveItem(remover1.uid,1)
			doCreateItem(2662,1,chapeu1)
			doRemoveItem(remover2.uid,1)
			doCreateItem(2662,1,chapeu2)
			doRemoveItem(remover3.uid,1)
			doCreateItem(2662,1,chapeu3)
	else
	doPlayerSendTextMessage(cid,22,"You first must find the Carrot under one of the three hats to get the access!")
	end
return true
end
