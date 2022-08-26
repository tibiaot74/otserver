function onSay(cid, words, param, channel)
	if getPlayerStorageValue(cid, 253) <= 0 then
	doPlayerSendTextMessage(cid,20,"You have enabled remove empty vials.")
	setPlayerStorageValue(cid,253,1)
	
	elseif getPlayerStorageValue(cid, 253) == 1 then
	doPlayerSendTextMessage(cid,20,"You have disabled remove empty vials.")
	setPlayerStorageValue(cid,253,0)	
	end
end

