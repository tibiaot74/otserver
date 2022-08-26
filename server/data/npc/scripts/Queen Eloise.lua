local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local node1 = keywordHandler:addKeyword({'promot'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can promote you for 10000 gold coins. Do you want me to promote you?'})
	node1:addChildKeyword({'yes'}, StdModule.promotePlayer, {npcHandler = npcHandler, cost = 10000, level = 20, promotion = 1, text = 'Congratulations! You are now promoted.'})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then, come back when you are ready.', reset = true})

local function creatureSayCallback(cid, type, msg)
	
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	
	if (msgcontains(msg, 'hail') and msgcontains(msg, 'queen') and msgcontains(msg, 'eloise') and (not npcHandler:isFocused(cid))) then
		npcHandler:say("I greet thee, my loyal subject", cid)
		npcHandler:addFocus(cid)
		talkState[cid] = 0
elseif msgcontains(msg, "uniforms") then
		if(getPlayerStorageValue(cid, 250) == 17) then
			npcHandler:say("I remember about those uniforms, they had a camouflage inlay so they could be worn the inside out too. I will send some color samples via mail to Mr. Postner. ", cid)
			setPlayerStorageValue(cid, 250, 18)
		else
			npcHandler:say('The uniforms of our guards and soldiers are of unparraleled quality of course.', cid)
		end
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())