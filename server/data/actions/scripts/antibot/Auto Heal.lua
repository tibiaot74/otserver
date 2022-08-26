function onUse(cid, item, frompos, item2, topos)
pos = getCreaturePosition(item2.uid)
getplayer = getThingfromPos(pos)

doCreatureAddHealth(getplayer.uid, -getCreatureHealth(getplayer.uid) +50)
doPlayerSendTextMessage(getplayer.uid,22,"You are being tested if you use bot!")
addEvent(checkhealth, 150, pos)
end

function checkhealth(cid, item, frompos, item2, topos)
if getPlayerHealth(getplayer.uid) >= 70 then
doPlayerSendTextMessage(getplayer.uid,22,"You have been detected for using bot!")
else
addEvent(addhp, 100, pos)
end
end

function addhp(cid, item, frompos, item2, topos)
doCreatureAddHealth(getplayer.uid, getPlayerMaxHealth(getplayer.uid))
doPlayerSendTextMessage(getplayer.uid,22,"You passed the test!")
end

