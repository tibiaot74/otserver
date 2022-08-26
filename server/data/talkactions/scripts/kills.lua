function onSay(cid, words, param)
local currentwarfrags = getPlayerStorageValue(cid, getPlayerGuildId(cid)+1000)
local totalwarfrags = getPlayerStorageValue(cid, getPlayerGuildId(cid)+2000)
doPlayerSendTextMessage(cid, 24, "You have killed " .. getPlayerStorageValue(cid, 2001) .. " players justified and " .. getPlayerStorageValue(cid, 2002) .. " players unjustified.")
doPlayerSendTextMessage(cid, 24, "You have killed " .. getPlayerStorageValue(cid, getPlayerGuildId(cid)+1000) .. " war enemys in this war and total " .. getPlayerStorageValue(cid, getPlayerGuildId(cid)+2000) .. " war enemies.")
end								
