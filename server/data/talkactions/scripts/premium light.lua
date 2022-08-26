function onSay(cid, words, param, channel)
if getPlayerStorageValue(cid, 251) == 2 then
	if getPlayerStorageValue(cid, 252) <= 1 then
	doSetCreatureLight(cid, 9, 215, 12*60*60*1000)
	doPlayerSendTextMessage(cid,20,"You have enabled premium light.")
	setPlayerStorageValue(cid,252,2)
	elseif getPlayerStorageValue(cid, 252) == 2 then
	doPlayerSendTextMessage(cid,20,"You have disabled premium light.")
	doSetCreatureLight(cid, 7, 215, 10*1000)
	setPlayerStorageValue(cid,252,1)	
	end
else
doPlayerSendTextMessage(cid,18,"Only premium players may use premium light!")
end
end

