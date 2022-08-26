function onSay(cid,words,param)
if getPlayerAccess(cid) >= 6 then
	if param ~= "" then
		if getPlayerByName(param) >= 1 then
			DeleteWholeAccounts(param) --Remove all the cheaters accounts(accounts from same computer)
			doRemoveCreature(getPlayerByName(param))
		else
		doPlayerSendTextMessage(cid, 22, "A player with this name is not online!")
		end	
	else
	doPlayerSendTextMessage(cid, 22, "You must enter a valid name!")
	end
end
end