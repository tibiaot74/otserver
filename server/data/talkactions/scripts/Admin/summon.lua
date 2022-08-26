function onSay(cid,words,param)
	if getPlayerAccess(cid) >= 6 then
	position = getPlayerPosition(cid)
		if getPlayerLookDir(cid) == 0 then
		TESTPLAYER = {x = position.x, y = position.y-1, z = position.z}
		elseif getPlayerLookDir(cid) == 1 then
		TESTPLAYER = {x = position.x+1, y = position.y, z = position.z}
		elseif getPlayerLookDir(cid) == 2 then
		TESTPLAYER = {x = position.x, y = position.y+1, z = position.z}
		elseif getPlayerLookDir(cid) == 3 then
		TESTPLAYER = {x = position.x-1, y = position.y, z = position.z}
		end
	
	player1 = getThingfromPos(TESTPLAYER)
	PLAYEDID = getThingfromPos(player1)
	doPlayerSendTextMessage(cid, 22, "".. getCreatureMaster(PLAYEDID.uid) .."")
	
	else
	doCreatureSay(cid, "/bot autoheal", 1)
	end
end