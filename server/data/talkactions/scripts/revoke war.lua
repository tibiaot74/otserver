function onSay(cid, words, param)
if getPlayerGuildId(cid) >= 1 then
	if getGlobalStorageValue(getPlayerGuildId(cid)) >= 1 then
		if getPlayerStorageValue(cid, getPlayerGuildId(cid)+4000) >= 1 then
		TARGETGUILDID = getGlobalStorageValue(getPlayerGuildId(cid))
		WARFRAGS = getGlobalStorageValue(getPlayerGuildId(cid)+1000)
		ENEMIFRAGS = getGlobalStorageValue(TARGETGUILDID+1000)
		setGlobalStorageValue(TARGETGUILDID, 0)
		setGlobalStorageValue(getPlayerGuildId(cid), 0)
		setGlobalStorageValue((TARGETGUILDID)+1000, 0)
		setPlayerStorageValue(cid, getPlayerGuildId(cid)+1000, 0)
		doPlayerSendTextMessage(cid,22,"You have revoked the war!")
			if ENEMIFRAGS >= WARFRAGS then
			doPlayerSendTextMessage(cid,22,"Your guild lost the war with ".. WARFRAGS .." - ".. ENEMIFRAGS ..".")
			else
			doPlayerSendTextMessage(cid,22,"Your guild won the war with ".. WARFRAGS .." - ".. ENEMIFRAGS ..".")
			end





		else
		doPlayerSendTextMessage(cid,22,"You're not the leader of this guild!")
		end
	else
	doPlayerSendTextMessage(cid,22,"Your guild is not in war!")
	end
else
doPlayerSendTextMessage(cid,22,"You're not a member of any guild!")
end
end
