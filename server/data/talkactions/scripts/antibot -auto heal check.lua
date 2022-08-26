function onSay(cid, words, param)
player1pos = getPlayerPosition(cid)
player1 = getThingfromPos(player1pos)
doCreatureAddHealth(cid, -getCreatureHealth(cid) +50)
addEvent(checkhealth, 100, pos)
end

function checkhealth(cid, item, frompos, item2, topos)
if getPlayerHealth(player1.uid) >= 70 then
doPlayerSendTextMessage(player1.uid,22,"You have been detected for using bot!")
broadcastMessage(16, ":".. getPlayerName(player1.uid) .." [lvl: ".. getPlayerLevel(player1.uid) ..": have been detected for using illegal software and have therefor been premanently removed from the game!")
	if getHouseByPlayerGUID(getPlayerGUID(player1.uid)) >= 1 then
	broadcastMessage(16, "This player lost the house :".. getHouseName(getHouseByPlayerGUID(getPlayerGUID(player1.uid))) .."!")
	cleanHouse(getHouseByPlayerGUID(getPlayerGUID(player1.uid)))
	setHouseOwner(getHouseByPlayerGUID(getPlayerGUID(player1.uid)), 0)
	end

else
addEvent(addhp, 50, pos)
end
end

function addhp(cid, item, frompos, item2, topos)
doCreatureAddHealth(player1.uid, getPlayerMaxHealth(player1.uid))
doPlayerSendTextMessage(player1.uid,22,"You have been detected for using bot!")
end

