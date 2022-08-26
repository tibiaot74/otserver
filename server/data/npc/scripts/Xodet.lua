local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
-- OTServ event handling functions end

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end


if msgcontains(msg, 'bp of lf') or msgcontains(msg, 'bp of life fluid') or msgcontains(msg, 'bp lf') then
	npcHandler:say('Do you want to buy a backpack of explosion rune for 1200 gold coins?')
	talk_state = 5
	
		elseif msgcontains(msg, 'yes') and talk_state == 5 then
			if getPlayerMoney(cid) >= 1200 then
				purple2_bp = doPlayerAddItem(cid, 2000, 1)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doAddContainerItem(purple2_bp, 2006, 10)
				doPlayerRemoveMoney(cid, 1200)
				npcHandler:say('Thank you for buying.')
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
	end

if msgcontains(msg, 'bp of mf') or msgcontains(msg, 'bp of manafluid') or msgcontains(msg, 'bp mf') then
	npcHandler:say('Do you want to buy a backpack of mana fluid for 2000 gold coins?')
	talk_state = 6
	
		elseif msgcontains(msg, 'yes') and talk_state == 6 then
			if getPlayerMoney(cid) >= 2000 then
				brown_bp = doPlayerAddItem(cid, 2001, 1)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doPlayerRemoveMoney(cid, 2000)
				npcHandler:say('Thank you for buying.')
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
	end	
	
		return TRUE
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())