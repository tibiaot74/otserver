local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

 
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local function getPlayerBones(cid)
	return getPlayerItemCount(cid, 2230) + getPlayerItemCount(cid, 2231)
end

local function doPlayerRemoveBones(cid)
	return doPlayerRemoveItem(cid, 2230, getPlayerItemCount(cid, 2230)) and doPlayerRemoveItem(cid, 2231, getPlayerItemCount(cid, 2231))
end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
	

	if(msgcontains(msg, "banana skin") or msgcontains(msg, "Sniff Bananaskin")) then
		if(getPlayerStorageValue(cid, 250) == 19) then
			if(getPlayerItemCount(cid, 2219) >= 1) then
				npcHandler:say("<sniff><sniff> ", cid)
				npcHandlerfocus = 1
			end
		end
	elseif(msgcontains(msg, "dirty fur") or msgcontains(msg, "Sniff Piece of Fur")) then
		if(getPlayerStorageValue(cid, 250) == 20) then
			if(getPlayerItemCount(cid, 2220) >= 1) then
				npcHandler:say("<sniff><sniff> ", cid)
				npcHandlerfocus = 2
			end
		end
	elseif(msgcontains(msg, "mouldy cheese") or msgcontains(msg, "Sniff Moldy Cheese")) then
		if(getPlayerStorageValue(cid, 250) == 21) then
			if(getPlayerItemCount(cid, 2235) >= 1) then
				npcHandler:say("<sniff><sniff> ", cid)
				npcHandlerfocus = 3
			end
		end
	elseif(msgcontains(msg, "yes") or msgcontains(msg, "do you like that")) then
		if(npcHandlerfocus == 1) then
			npcHandler:say("Woof!", cid)
			setPlayerStorageValue(cid, 250, 20)
			npcHandlerfocus = 0
		elseif(npcHandlerfocus == 2) then
			npcHandler:say("Woof!", cid)
			setPlayerStorageValue(cid, 250, 21)
			npcHandlerfocus = 0
		elseif(npcHandlerfocus == 3) then
			npcHandler:say("Meeep! Grrrrr! <spits> ", cid)
			setPlayerStorageValue(cid, 250, 22)
			npcHandlerfocus = 0
		end
	end
	return true
end
 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())