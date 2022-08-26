
function onUse(cid, item, frompos, item2, topos)
player1pos = getPlayerPosition(cid)
player1 = getThingfromPos(player1pos)
-- Tutorial Chest 1 (leather armor) --
if item.uid == 1001 then
	if getPlayerStorageValue(cid,3005) <= 4 then
	doPlayerSendTextMessage(cid,22,"You have found a leather set.")
	doShowTextDialog(cid, 2467, '*Equipment*\n\nAny Equipment help you block attacks made by monsters that is trying to kill you! the equipment must be stored on your Equipment bar which is below your health bar.\n\nIt\'s recommended that you try to loot or buy better equipment when you can, the better your equipment is, the harder attacks from the monsters can you block!')
	doPlayerAddItem(cid, Cfleatherarmor, 1)	--Leather armor
	doPlayerAddItem(cid, Cfleatherlegs, 1)	--Leather legs
	setPlayerStorageValue(cid,3005,5)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Tutorial Chest 2 (torch) --
elseif item.uid == 1002 then
	if getPlayerStorageValue(cid,3005) == 8 then
	doShowTextDialog(cid, 2051, '*Torch*\n\nA burning torch light up dark places, caves for example! but in order to light a drak place up you need to keep the torch in your equipment bar, in your hands or in your arrow slot.\nIt\'s most recommended to use the arrow slot, because your hands are busy wearing a weapon and a shield, right?\n\nGood luck!')
	doPlayerSendTextMessage(cid,22,"You have found a torch. put it on fire by right click on it.")
	doPlayerAddItem(cid, 2050, 1)	--Torch
	setPlayerStorageValue(cid,3005,9)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Tutorial Chest 3 (Shovel) --
elseif item.uid == 1003 then
	if getPlayerStorageValue(cid,3005) == 10 then
	doShowTextDialog(cid, 2554, '*Shovel*\n\nShovel is used to open closed holes. like the one you can see south of you.\nRight click on the shovel and left click on the closed hole you want to open.')
	doPlayerAddItem(cid, 2554, 1)	--Shovel
	setPlayerStorageValue(cid,3005,11)
	addEvent(Animatedtext1, 3 * 1000, pos)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Tutorial Chest 4 (pick) --
elseif item.uid == 1004 then
	if getPlayerStorageValue(cid,3005) == 12 then
	doPlayerAddItem(cid, 2553, 1)	--pick
	doShowTextDialog(cid, 2553, '*Pick*\n\nPick is used to open closed holes. like the one you can see east of you.\nRight click on the shovel and left click on the closed hole you want to open.')
	setPlayerStorageValue(cid,3005,13)
	addEvent(Animatedtext2, 3 * 1000, pos)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Tutorial Chest 5 (rope) --
elseif item.uid == 1005 then
	if getPlayerStorageValue(cid,3005) == 14 then
	doShowTextDialog(cid, 2120, '*Rope*\n\nRope is used to climb up in holes. like the one you can see east of you.\nRight click on the rope and left click on the ground (rope spot) you want to climb up from.')
	doPlayerAddItem(cid, 2120, 1)	--rope
	setPlayerStorageValue(cid,3005,15)
	addEvent(Animatedtext3, 7 * 1000, pos)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Switch --
elseif item.uid == 1006 then
	if getPlayerStorageValue(cid,3005) >= 15 then
	doPlayerSendTextMessage(cid,22,"I'm sorry.. but this part of the tutorial is not completed yet!")
	else
	doPlayerSendTextMessage(cid,22,"Loot the chest before you continue!.")
	end
-----
-----
end
end



function Animatedtext1(cid, item, pos)
if isPlayer(player1.uid) == TRUE then
if getPlayerStorageValue(player1.uid, 3005) <= 11 then
	holepos1 = {x=31969, y=32264, z=7}
	doSendAnimatedText(holepos1, "Shovel!", 180)
	addEvent(Animatedtext1, 2 * 1000, pos)
end	
end
end
function Animatedtext2(cid, item, pos)
if isPlayer(player1.uid) == TRUE then
if getPlayerStorageValue(player1.uid, 3005) <= 13 then
	holepos2 = {x=31974, y=32264, z=8}
	doSendAnimatedText(holepos2, "Pick", 180)
	addEvent(Animatedtext2, 2 * 1000, pos)
end	
end
end
function Animatedtext3(cid, item, pos)
	holepos3 = {x=31974, y=32264, z=9}
	doSendAnimatedText(holepos3, "Rope!", 180)
end
