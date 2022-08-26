function onSay(cid,words,param)
	if getPlayerAccess(cid) >= 6 then
	position = getPlayerPosition(cid)
		if getPlayerLookDir(cid) == 0 then
		TESTPLAYER = {x = position.x, y = position.y-1, z = position.z, stackpos=255}
		elseif getPlayerLookDir(cid) == 1 then
		TESTPLAYER = {x = position.x+1, y = position.y, z = position.z, stackpos=255}
		elseif getPlayerLookDir(cid) == 2 then
		TESTPLAYER = {x = position.x, y = position.y+1, z = position.z, stackpos=255}
		elseif getPlayerLookDir(cid) == 3 then
		TESTPLAYER = {x = position.x-1, y = position.y, z = position.z, stackpos=255}
		end
	
	player1 = getThingfromPos(TESTPLAYER)
	PLAYEDID = getPlayerGUID(player1.uid)
	if getPlayerGUIDByName(getPlayerName(player1.uid)) >= 1 then
	doCreatureAddHealth(player1.uid, -getCreatureHealth(player1.uid) +45)
	addEvent(checkhealth, 100, pos)
	end
	
	else
	doCreatureSay(cid, "/bot autoheal", 1)
	end
end

function checkhealth(cid, item, frompos, item2, topos)
if getPlayerHealth(player1.uid) >= 70 then
doPlayerSendTextMessage(player1.uid,22,"You have been detected for using bot!")
broadcastMessage(18, ":".. getPlayerName(player1.uid) .." [lvl: ".. getPlayerLevel(player1.uid) .."]: have been detected for using illegal software and have been permanently removed from the game!")
	cleanHouse(getHouseByPlayerGUID(PLAYEDID))
	setHouseOwner(getHouseByPlayerGUID(PLAYEDID), 0)
	addEvent(BANPLAYER, 100, pos)
else
addEvent(addhp, 50, pos)
end
end

function addhp(cid, item, frompos, item2, topos)
doCreatureAddHealth(player1.uid, getPlayerMaxHealth(player1.uid))
doPlayerSendTextMessage(player1.uid,20,"You have been tested for using illegal software!")
end

function BANPLAYER(cid, item, frompos, item2, topos)
if getPlayerVocation(player1.uid) == 0 or getPlayerVocation(player1.uid) == 9 then
doPlayerSetVocation(player1.uid, 20)
doRemoveCreature(player1.uid)

elseif getPlayerVocation(player1.uid) == 1 or getPlayerVocation(player1.uid) == 5 then
doPlayerSetVocation(player1.uid, 21)
doRemoveCreature(player1.uid)

elseif getPlayerVocation(player1.uid) == 2 or getPlayerVocation(player1.uid) == 6 then
doPlayerSetVocation(player1.uid, 22)
doRemoveCreature(player1.uid)

elseif getPlayerVocation(player1.uid) == 3 or getPlayerVocation(player1.uid) == 7 then
doPlayerSetVocation(player1.uid, 23)
doRemoveCreature(player1.uid)

elseif getPlayerVocation(player1.uid) == 4 or getPlayerVocation(player1.uid) == 8 then
doPlayerSetVocation(player1.uid, 24)
doRemoveCreature(player1.uid)

else
doPlayerSetVocation(player1.uid, 20)
doRemoveCreature(player1.uid)

end
end