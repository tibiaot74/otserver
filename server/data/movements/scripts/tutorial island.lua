
function onStepIn(cid, item, pos)
player1pos = getPlayerPosition(cid)
player1 = getThingfromPos(player1pos)
if isPlayer(cid) == TRUE then
	if item.actionid == 3005 and item.uid == 1004 and getPlayerStorageValue(player1.uid, 3005) >= 3 then
	DENIEBACK1 = {x=31963, y=32283, z=6}
	doTeleportThing(player1.uid, DENIEBACK1)
	doSendMagicEffect(DENIEBACK1,10)
	doPlayerSendTextMessage(player1.uid,19,"You have no business in this part of the island anymore. Talk to Eric to continue!")
	
	elseif item.actionid == 3005 and item.uid == 1005 and getPlayerStorageValue(player1.uid, 3005) <= 3 then
	DENIEBACK2 = {x=31966, y=32280, z=6}
	doTeleportThing(player1.uid, DENIEBACK2)
	doSendMagicEffect(DENIEBACK2,10)
	doPlayerSendTextMessage(player1.uid,19,"You have no access here! talk to Eric to continue!")
	
	elseif item.actionid == 3005 and item.uid == 1005 and getPlayerStorageValue(player1.uid, 3005) == 4 then
	if getPlayerStorageValue(player1.uid, 3007) <= 0 then
		CHEST1 = {x=31970, y=32278, z=5}
		doSendAnimatedText(CHEST1, "This Chest!", 180)
		doPlayerSendTextMessage(player1.uid,19,"Loot the chest, it might contain something!")
		addEvent(Animatedtext1, 2 * 1000, pos)
		setPlayerStorageValue(cid,3007,1)
	end	

	elseif item.actionid == 3005 and item.uid == 1006 and getPlayerStorageValue(player1.uid, 3005) == 5 then
	DENIEBACK3 = {x=31968, y=32278, z=5}
		if getPlayerStorageValue(player1.uid, 1500) == 1 then
			if getPlayerStorageValue(player1.uid, 1501) == 1 then
			else
			doPlayerSendTextMessage(player1.uid,19,"Put the leather legs in your legs slot!")
			doTeleportThing(player1.uid, DENIEBACK3)
			doSendMagicEffect(DENIEBACK3,10)
			end
		else
		doPlayerSendTextMessage(player1.uid,19,"Put the leather armor in your armor slot!")
		doTeleportThing(player1.uid, DENIEBACK3)
		doSendMagicEffect(DENIEBACK3,10)
		end
	
	elseif item.actionid == 3005 and item.uid == 1008 and getPlayerStorageValue(player1.uid, 3005) <= 8 then
	DENIEBACK4 = {x=31967, y=32280, z=7}
	doTeleportThing(player1.uid, DENIEBACK4)
	doSendMagicEffect(DENIEBACK4,10)
	doPlayerSendTextMessage(player1.uid,19,"It's dark here! get the torch in the chest before you go down!")

	elseif item.actionid == 3005 and item.uid == 1010 then
	if (isPlayer(cid)) then
		if getPlayerItemCount(cid, 2051) >= 1 then
			if getPlayerStorageValue(cid, 3006) >= 4 then
			DENIEBACK5 = {x=31965, y=32283, z=8}
			doTeleportThing(player1.uid, DENIEBACK5)
			doSendMagicEffect(DENIEBACK5,10)
			doPlayerSendTextMessage(player1.uid,19,"You are done in this room.")
			end
		else
		DENIEBACK5 = {x=31965, y=32283, z=8}
		doTeleportThing(player1.uid, DENIEBACK5)
		doSendMagicEffect(DENIEBACK5,10)
		doPlayerSendTextMessage(player1.uid,19,"It's dark here! Right click on your torch to turn it on!")
		end
	end	

	elseif item.actionid == 3005 and item.uid == 1009 and getPlayerStorageValue(player1.uid, 3006) < 0 then
	doPlayerSendTextMessage(player1.uid,19, "You have no business here yet! talk to Eric to continue!")
	DENIEBACK5 = {x=31965, y=32281, z=6}
	doTeleportThing(player1.uid, DENIEBACK5)
	doSendMagicEffect(DENIEBACK5,10)
	
	elseif item.actionid == 3005 and item.uid == 1009 and getPlayerStorageValue(player1.uid, 3006) == 0 then
	doShowTextDialog(player1.uid, 1223, '*Doors*\n\nOpen a door simply by "right click" on it. and walk through.\nHowever some doors might be locked and wont open when you try to open them, in that case it will say something about it ("It\'s locked", "This door seems sealed against unwanted intruders") for example.')
	setPlayerStorageValue(player1.uid,3006,1)	
	
	elseif item.actionid == 3005 and item.uid == 1011 and getPlayerStorageValue(player1.uid, 3006) >= 2 and getPlayerStorageValue(player1.uid, 3006) <= 3 then
	DENIEBACK6 = {x=31967, y=32283, z=9}
	doTeleportThing(player1.uid, DENIEBACK6)
	doSendMagicEffect(DENIEBACK6,10)
	doPlayerSendTextMessage(player1.uid,19,"You must kill 3 house spiders before you can go up again!")	

	elseif item.actionid == 3005 and item.uid == 1012 and getPlayerStorageValue(player1.uid, 3005) <= 9 then
	DENIEBACK7 = {x=31962, y=32278, z=6}
	doTeleportThing(player1.uid, DENIEBACK7)
	doSendMagicEffect(DENIEBACK7,10)
	doPlayerSendTextMessage(player1.uid,19,"You do not have access here yet!")	

	elseif item.actionid == 3005 and item.uid == 1013 and getPlayerStorageValue(player1.uid, 3005) >= 10 then
	DENIEBACK8 = {x=31964, y=32270, z=7}
	doTeleportThing(player1.uid, DENIEBACK8)
	doSendMagicEffect(DENIEBACK8,10)
	doPlayerSendTextMessage(player1.uid,19,"You're done in this part of the island.")

	elseif item.actionid == 3005 and item.uid == 1014 and getPlayerStorageValue(player1.uid, 3006) >= 1 and getPlayerStorageValue(player1.uid, 3006) <= 3 then
	DENIEBACK9 = {x=31966, y=32283, z=7}
	doTeleportThing(player1.uid, DENIEBACK9)
	doSendMagicEffect(DENIEBACK9,10)
	doPlayerSendTextMessage(player1.uid,19,"You cannot leave yet! go down and kill 3 spiders first!")

	elseif item.actionid == 3005 and item.uid == 1015 and getPlayerStorageValue(player1.uid, 3005) <= 11 then
	doPlayerSendTextMessage(player1.uid,19,"To continue, loot the chest!")	
	setPlayerStorageValue(cid,3005,12)	

	elseif item.actionid == 3005 and item.uid == 1016 and getPlayerStorageValue(player1.uid, 3005) <= 13 then
	doPlayerSendTextMessage(player1.uid,19,"To continue, loot the chest!")	
	setPlayerStorageValue(cid,3005,14)		
	end	
	end	
end







function onStepOut(cid, item, pos)
if isPlayer(cid) == TRUE then
	if item.actionid == 3005 and item.uid == 1001 and getPlayerStorageValue(cid, 3005) == 0 then
	doShowTextDialog(cid, 1431, '*Signs*\n\nYou can get to know valuable things by checking signs like this one.\nThey can tell you were to find something.\nLook at signs by klick on the sign with both right and left mouse buttons.')
	setPlayerStorageValue(cid,3005,1)
	
	elseif item.actionid == 3005 and item.uid == 1002 and getPlayerStorageValue(cid, 3005) == 1 then
	doShowTextDialog(cid, 3687, '*Stairs*\n\nYou can simply go up on stairs by simply walking on them.')
	setPlayerStorageValue(cid,3005, 2)
	
	elseif item.actionid == 3005 and item.uid == 1003 and getPlayerStorageValue(cid, 3005) == 2 then
	doShowTextDialog(cid, 2110, '*Erik The Tutorial Master*\n\nThis is an NPC\n(Non-Player Character).\n You can talk to an NPC by greet them\n(Hi, Hello)\n\nGo ahead, greet him and talk to him.')
	setPlayerStorageValue(cid,3005, 3)	
	end	
end
end

function Animatedtext1(cid, item, pos)
if isPlayer(player1.uid) == TRUE then
if getPlayerStorageValue(player1.uid, 3005) <= 4 then
	CHEST1 = {x=31970, y=32278, z=5}
	doSendAnimatedText(CHEST1, "This Chest!", 180)
	addEvent(Animatedtext1, 2 * 1000, pos)
end	
end
end
