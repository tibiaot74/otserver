function onStepIn(cid, item, pos)
doCreatureAddHealth(cid, -getCreatureHealth(cid) +50)
doPlayerSendTextMessage(cid,22,"You are being tested if you use bot!")
addEvent(checkhealth, 200, pos)
end

function checkhealth(cid, item, frompos, item2, topos)
if getPlayerHealth(cid) >= 70 then
doPlayerSendTextMessage(cid,22,"You have been detected for using bot!")
else
addEvent(addhp, 100, pos)
end
end

function addhp(cid, item, frompos, item2, topos)
doCreatureAddHealth(cid, getPlayerMaxHealth(cid))
doPlayerSendTextMessage(cid,22,"You passed the test!")
end

