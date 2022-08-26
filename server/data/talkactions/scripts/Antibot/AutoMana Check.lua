function onSay(cid,words,param)
if getPlayerAccess(cid) >= 4 then
	if param ~= "" then
		if getPlayerByName(param) >= 1 then
		doPlayerAddMana(getPlayerByName(param), 100000)
		doPlayerSendTextMessage(cid, 22, "".. param ..", have been targeted for a Auto Mana Waste test!")
		else
		doPlayerSendTextMessage(cid, 22, "A player with this name is not online!")
		end		
	else
	doPlayerSendTextMessage(cid, 22, "You must enter a valid name!")
	end
end
end