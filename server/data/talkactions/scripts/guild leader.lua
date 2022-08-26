function onSay(cid, words, param, channel)
if getPlayerGuildId(cid) >= 1 then
	if getGlobalStorageValue(getPlayerGuildId(cid)+4000) <= 0 then
	setGlobalStorageValue(getPlayerGuildId(cid)+4000, 1)
	setPlayerStorageValue(cid, getPlayerGuildId(cid)+4000, 1)
	doPlayerSendTextMessage(cid,22,"You have now made yourself leader of ".. getPlayerGuildName(cid) ..".")
	else
	doPlayerSendTextMessage(cid,22,"This guild already have a leader!")
	end
else	
doPlayerSendTextMessage(cid,22,"You're not member in any guild!")
end
end

