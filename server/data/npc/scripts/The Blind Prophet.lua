local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

 
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
	if msgcontains(msg, "transport") then
		npcHandler:say("You want me to transport you to forbidden land?", cid)
		npcHandlerfocus = 1
	elseif(npcHandlerfocus == 1) then
		if  msgcontains(msg, 'yes') then
			npcHandler:say("Take care!", cid)
			doTeleportThing(cid,{x=33025, y=32580, z=6})
		end
		if  msgcontains(msg, 'no') then
			npcHandler:say("Then no!", cid)
		end
	end
	return true
end
		
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
