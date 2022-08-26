function onSay(cid,words,param)
if param = "chelmet" then
return TRUE
end
if param == "chelmet" then
	if doPlayerRemoveItem(cid, 2157, 1) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a crown helmet.")
		doPlayerAddItem(cid, 2491, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
		
elseif param == "gaarmor" then
	if doPlayerRemoveItem(cid, 2157, 12) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a golden armor.")
		doPlayerAddItem(cid, 2466, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
elseif param == "brobe" then
	if doPlayerRemoveItem(cid, 2157, 6) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a blue robe.")
		doPlayerAddItem(cid, 2656, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
elseif param == "klegs" then
	if doPlayerRemoveItem(cid, 2157, 3) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a pair of knight legs.")
		doPlayerAddItem(cid, 2477, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
elseif param == "boh" then
	if doPlayerRemoveItem(cid, 2157, 12) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a pair boots of haste.")
		doPlayerAddItem(cid, 2195, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
elseif param == "dshield" then
	if doPlayerRemoveItem(cid, 2157, 2) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a dragon shield.")
		doPlayerAddItem(cid, 2516, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
elseif param == "vshield" then
	if doPlayerRemoveItem(cid, 2157, 8) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a vampire shield.")
		doPlayerAddItem(cid, 2534, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
elseif param == "cc" then
		if doPlayerRemoveItem(cid, 2157, 4) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a crystal coin.")
		doPlayerAddItem(cid, 2160, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
elseif param == "faxe" then
	if doPlayerRemoveItem(cid, 2157, 4) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a fire axe.")
		doPlayerAddItem(cid, 2432, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
elseif param == "bsword" then
	if doPlayerRemoveItem(cid, 2157, 4) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a bright sword.")
		doPlayerAddItem(cid, 2407, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
elseif param == "sstaff" then
	if doPlayerRemoveItem(cid, 2157, 3) == TRUE then
		doPlayerSendTextMessage(cid,22,"You have bought a skull staff.")
		doPlayerAddItem(cid, 2436, 1)
	else
	doPlayerSendTextMessage(cid,9,"You don't have enough premium coins to buy this!")
	end
	
else
doPlayerSendTextMessage(cid, 16, 'What would you like to have? look here to view what you can get: http://www.palera.net/gift.php')
end
end

