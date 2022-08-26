function onSay(cid, words, param, channel)
if getPlayerGuildId(cid) >= 1 then
	if getGlobalStorageValue(getPlayerGuildId(cid)+4000) >= 1 then
		if getPlayerStorageValue(cid, getPlayerGuildId(cid)+4000) >= 1 then
		setGlobalStorageValue(getPlayerGuildId(cid)+4000, 0)
		setPlayerStorageValue(cid, getPlayerGuildId(cid)+4000, 0)
		doPlayerSendTextMessage(cid,22,"You have now left your leader rank of ".. getPlayerGuildName(cid) ..".")
		else
		doPlayerSendTextMessage(cid,22,"You're not the leader of this guild!")
		end
	else
	doPlayerSendTextMessage(cid,22,"This guild doesn't have any leader!")
	end
else	
doPlayerSendTextMessage(cid,22,"You're not member in any guild!")
end
end

