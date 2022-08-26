function onUse(cid, item, frompos, item2, topos)



if item.itemid == 1945 then

player1pos = {x=32375, y=32238, z=8, stackpos=253}
player1 = getThingfromPos(player1pos)
player2pos = {x=32375, y=32240, z=8, stackpos=253}
player2 = getThingfromPos(player2pos)
if player1.itemid > 0 and player2.itemid > 0 then
PLAYER1GUILDID = getPlayerGuildId(player1.uid)
PLAYER2GUILDID = getPlayerGuildId(player2.uid)
PLAYER1GUILDNAME = getPlayerGuildName(player1.uid)
PLAYER2GUILDNAME = getPlayerGuildName(player2.uid) 
PLAYER1NAME = getPlayerName(player1.uid)
PLAYER2NAME = getPlayerName(player2.uid)
if getPlayerStorageValue(player1.uid, getPlayerGuildId(player1.uid)+4000) >= 1 and getPlayerStorageValue(player2.uid, getPlayerGuildId(player2.uid)+4000) >= 1 then
	if PLAYER1GUILDID >= 1 then
		if PLAYER2GUILDID >= 1 then
			if PLAYER2GUILDID < PLAYER1GUILDID or PLAYER2GUILDID > PLAYER1GUILDID then
				if getGlobalStorageValue(PLAYER1GUILDID) <= 0 then
					if getGlobalStorageValue(PLAYER2GUILDID) <= 0 then
					setPlayerStorageValue(cid, getPlayerGuildId(player1.uid)+1000, 0) --Current war frag counter--
					setPlayerStorageValue(cid, getPlayerGuildId(player1.uid)+2000, 0) --Total war frag counter--
					setGlobalStorageValue(getPlayerGuildId(player2.uid)+1000, 0) --Current war frag counter--
					setGlobalStorageValue(getPlayerGuildId(player2.uid)+2000, 0) --Total war frag counter--					
					setGlobalStorageValue(PLAYER1GUILDID, PLAYER2GUILDID)
					setGlobalStorageValue(PLAYER2GUILDID, PLAYER1GUILDID)
					broadcastMessage(cid,20,'The guilds "'.. PLAYER1GUILDNAME ..'" and "'.. PLAYER2GUILDNAME ..'" have declared war! lets the fight begin!')
					else
					doPlayerSendTextMessage(cid,22,"".. PLAYER2GUILDNAME .." is already in a war!")
					end
				else
				doPlayerSendTextMessage(cid,22,"your guild is already in a war!")
				end
			else
			doPlayerSendTextMessage(cid,22,"You can't declare war against your own guild!")
			end
		else
		doPlayerSendTextMessage(cid,22,"".. PLAYER1NAME .." is not member in any guild!")
		end
	else	
	doPlayerSendTextMessage(cid,22,"You're not member in any guild!")
	end
else
doPlayerSendTextMessage(cid,22,"Both players must be leaders!")
end	
else
doPlayerSendTextMessage(cid,22,"Both leaders must stand on the tiles!")
end










doTransformItem(item.uid,item.itemid+1)
elseif item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)

end
  return 1
end

