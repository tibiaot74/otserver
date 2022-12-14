local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

 
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local config = {
	[1] = "S O R C E R E R",
	[2] = "D R U I D",
	[3] = "P A L A D I N",
	[4] = "K N I G H T"
}

local function greetCallback(cid)
	if getPlayerStorageValue(cid,55874012) == 7 then
		npcHandler:setMessage(MESSAGE_GREET, "Hey! You are back!! How can I help you this time?", cid)
	else
		npcHandler:setMessage(MESSAGE_GREET, "Hello " .. (getPlayerSex(cid) == 0 and "beautiful lady" or "handsome gentleman") .. ", welcome to the atrium of Pumin's Domain. We require some information from you before we can let you pass. Where do you want to go?")
	end
	return true
end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local vocationId = getPlayerVocation(cid)

	if msgcontains(msg, "pumin") then
		if getPlayerStorageValue(cid,55874012) == 1 then
			npcHandler:say("I'm not sure if you know what you are doing but anyway. Your name is?", cid)
			npcHandlerfocus = 1
		end
	elseif msgcontains(msg, getPlayerName(cid)) then
		if npcHandlerfocus == 1 then
			npcHandler:say("Alright " .. getPlayerName(cid) ..". Vocation?", cid)
			npcHandlerfocus = 2
		end
	elseif msgcontains(msg, "druid") or msgcontains(msg, "knight") or msgcontains(msg, "sorcerer") or msgcontains(msg, "paladin") then
		if npcHandlerfocus == 2 then
			npcHandler:say(config[vocationId] .. ", is that right?! What do you want from me?", cid)
			npcHandlerfocus = 3
		end
	elseif msgcontains(msg, "356") then
		if npcHandlerfocus == 3 then
			setPlayerStorageValue(cid,55874012, 2)
			npcHandler:say("Sorry, you need Form 145 to get Form 356. Come back when you have it", cid)
		elseif getPlayerStorageValue(cid,55874012) == 7 then
			setPlayerStorageValue(cid,55874012, 8)
			npcHandler:say("You are better than I thought! Congratulations, here you are: Form 356!", cid)
		end
		npcHandlerfocus = 0
	end
	return true
end

npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye and don't forget me!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye and don't forget me!")

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
