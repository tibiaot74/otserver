function onSay(cid, words, param)
	if doPlayerRemoveItem(cid, Cfpremiumcoin, 0) == TRUE then
	doPlayerAddPremiumDays(cid, 7)
	doPlayerSendTextMessage(cid, 22, "You have bought 7 days of premium account for 3 premium coins!")
	else
	doPlayerSendTextMessage(cid, 22, "You need 3 premium coins or more to buy premium!")
	end
end
