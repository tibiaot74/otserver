local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
end	
	-- Inicio Sam 
	if msgcontains(msg, 'sam') or msgcontains(msg, 'sen') and getPlayerStorageValue(cid, 289) == 1 then
	npcHandler:say('Oh, so its you, he wrote me about? Sadly I have no dwarven armor in stock. But I give you the permission to retrive one from the mines.')
	npcHandler:say('The problem is, some giant spiders made the tunnels where the storage is their new home. Good luck.')
	setPlayerStorageValue(cid, 290, 1)
	elseif(msgcontains(msg, "measurements")) then
		if(getPlayerStorageValue(cid, 250) == 33) then
			npcHandler:say("Hm, well I guess its ok to tell you ... <tells you about Lokurs measurements>", cid)
			setPlayerStorageValue(cid, 250, 34)
			npcHandlerfocus = 0
		end
	end
	return TRUE
	end
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())