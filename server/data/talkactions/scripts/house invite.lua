function onSay(cid, words, param)
if getPlayerStorageValue(cid,3998) <= 1 then
doPlayerSendTextMessage(cid, 22, "Please check out here how to invite players to your house!: http://otfans.net/showthread.php?t=164158")
setPlayerStorageValue(cid,3998,2)
end
	return TRUE
end
