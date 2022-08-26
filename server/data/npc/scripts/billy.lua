local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	-- NPC Billy feito por Rodrigo (Nottinghster) 
	
	if msgcontains(msg, 'pan') then
	npcHandler:say('Have you found a pan for me?')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid, 2563) >= 1 then
	npcHandler:say('A pan! At last! Take this in case you eat something my cousin has cooked.')
	doPlayerRemoveItem(cid, 2563, 1)
	doPlayerAddItem(cid, 2266, 1)
setPlayerStorageValue(cid,3035,1)

	talk_state = 0
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid, 2563) == 0 then
	npcHandler:say('Hey! You don\'t have it!')
	talk_state = 0
	
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('$&*@!')
	talk_state = 0
	
end
return true
end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


npcHandler:addModule(FocusModule:new())
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)