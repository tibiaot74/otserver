function onSay(cid,words,param)
if getPlayerVocation(cid) >= 1 and getPlayerVocation(cid) <= 8 then
	if doPlayerRemoveItem(cid, 2157, 2) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a dragon shield.")
		doPlayerAddItem(cid, 2516, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
else
doPlayerSendTextMessage(cid,9,"You can only buy this in main!")
end	
end

