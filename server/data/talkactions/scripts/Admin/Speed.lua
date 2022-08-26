function onSay(cid,words,param)
	if getPlayerName(cid) == "Event Erik" or getPlayerName(cid) == "Event Amoaz" or getPlayerName(cid) == "Event Znote" then
	doChangeSpeed(cid, getCreatureBaseSpeed(cid)*100)
	end
end