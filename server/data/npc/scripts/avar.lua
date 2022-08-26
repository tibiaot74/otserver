local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	
	if msgcontains(msg, 'time') then
	local time = getTibiaTime()
	npcHandler:say('It is '.. time.hours .. string.char(58) .. time.minutes ..', right now.')
	end
	if(getPlayerStorageValue(cid, 4523987) == 1) then
    if msgcontains(msg, 'embrace of tibia') then
	if(getPlayerBlessing(cid, 1)) then
			npcHandler:say("Gods have already blessed you with this blessing!", cid)
    	elseif(not doPlayerRemoveMoney(cid, 11000)) then
			npcHandler:say("You don't have enough money for blessing.", cid)
		else
			npcHandler:say("You have been blessed by one of the five gods!", cid)
			doPlayerAddBlessing(cid, 1)
		end
    elseif msgcontains(msg, 'spiritual shielding') then
	if(getPlayerBlessing(cid, 2)) then
			npcHandler:say("Gods have already blessed you with this blessing!", cid)
    	elseif(not doPlayerRemoveMoney(cid, 11000)) then
			npcHandler:say("You don't have enough money for blessing.", cid)
		else
			npcHandler:say("You have been blessed by one of the five gods!", cid)
			doPlayerAddBlessing(cid, 2)
		end
    elseif msgcontains(msg, 'fire of the suns') then
    if(getPlayerBlessing(cid, 3)) then
			npcHandler:say("Gods have already blessed you with this blessing!", cid)
    	elseif(not doPlayerRemoveMoney(cid, 11000)) then
			npcHandler:say("You don't have enough money for blessing.", cid)
		else
			npcHandler:say("You have been blessed by one of the five gods!", cid)
			doPlayerAddBlessing(cid, 3)
		end	
    elseif msgcontains(msg, 'wisdom of solitude') then
    if(getPlayerBlessing(cid, 4)) then
			npcHandler:say("Gods have already blessed you with this blessing!", cid)
    	elseif(not doPlayerRemoveMoney(cid, 11000)) then
			npcHandler:say("You don't have enough money for blessing.", cid)
		else
			npcHandler:say("You have been blessed by one of the five gods!", cid)
			doPlayerAddBlessing(cid, 4)
		end	
    elseif msgcontains(msg, 'spark of the phoenix') then
    if(getPlayerBlessing(cid, 5)) then
			npcHandler:say("Gods have already blessed you with this blessing!", cid)
    	elseif(not doPlayerRemoveMoney(cid, 11000)) then
			npcHandler:say("You don't have enough money for blessing.", cid)
		else
			npcHandler:say("You have been blessed by one of the five gods!", cid)
			doPlayerAddBlessing(cid, 5)
		end			
	end
	else
	npcHandler:say("You do not have permission to buy blessing!", cid)
	end
	return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
