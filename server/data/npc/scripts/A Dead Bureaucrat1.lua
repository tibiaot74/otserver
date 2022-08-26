local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

 
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local config = {
	[1] = "wand",
	[2] = "rod",
	[3] = "bow",
	[4] = "sword"
}

function greetCallback(cid)
	if getPlayerStorageValue(cid,55874012) == 3 then
		npcHandler:setMessage(MESSAGE_GREET, "You again. I told my master that you wish to end your stupid life in his domain but you need Form 356 to get there. What do you need this time?", cid)
	elseif getPlayerStorageValue(cid,55874012) == 5 then
		npcHandler:setMessage(MESSAGE_GREET, "You again. I told my master that you wish to end your stupid life in his domain but you need Form 356 to get there. What do you need this time?", cid)
	elseif getPlayerStorageValue(cid,55874012) == 8 then
		npcHandler:setMessage(MESSAGE_GREET, "You again. I told my master that you wish to end your stupid life in his domain but you need Form 356 to get there. What do you need this time?", cid)
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
		if getPlayerStorageValue(cid,55874013) < 1 and getPlayerStorageValue(cid,55874012) < 1 then
			npcHandler:say("Sure, where else. Everyone likes to meet my master, he is a great demon, isn't he? Your name is ...?", cid)
			npcHandlerfocus = 1
		elseif npcHandlerfocus == 3 then
			setPlayerStorageValue(cid,55874012, 1)
			npcHandler:say("How very interesting. I need to tell that to my master immediately. Please go to my colleagues and ask for Form 356. You will need it in order to proceed.", cid)
			npcHandlerfocus = 0
		end
	elseif msgcontains(msg, getPlayerName(cid)) then
		if npcHandlerfocus == 1 then
			npcHandler:say("Alright " .. getPlayerName(cid) ..". Vocation?", cid)
			npcHandlerfocus = 2
		end
	elseif msgcontains(msg, "druid") or msgcontains(msg, "knight") or msgcontains(msg, "sorcerer") or msgcontains(msg, "paladin") then
		if npcHandlerfocus == 2 then
			npcHandler:say("Huhu, please don't hurt me with your " .. config[vocationId] .. "! Reason of your visit?", cid)
			setPlayerStorageValue(cid,55874013, 1)
			npcHandlerfocus = 3
		end
	elseif msgcontains(msg, "411") then
		if getPlayerStorageValue(cid,55874012) == 3 then
			npcHandler:say("Form 411? You need Form 287 to get that! Do you have it?", cid)
			npcHandlerfocus = 5
		elseif getPlayerStorageValue(cid,55874012) == 5 then
			npcHandler:say("Form 411? You need Form 287 to get that! Do you have it?", cid)
			npcHandlerfocus = 7
		end
	elseif msgcontains(msg, "no") then
		if npcHandlerfocus == 5 then
			setPlayerStorageValue(cid,55874012, 4)
			npcHandler:say("Oh, what a pity. Go see one of my colleagues. I give you the permission to get Form 287. Bye!", cid)
		end
	elseif msgcontains(msg, "yes") then
		if npcHandlerfocus == 7 then
			setPlayerStorageValue(cid,55874012, 6)
			npcHandler:say("Great. Here you are. Form 411. Come back anytime you want to talk. Bye.", cid)
		end
	elseif msgcontains(msg, "356") then
		if getPlayerStorageValue(cid,55874012) == 8 then
			setPlayerStorageValue(cid,55874012, 9)
			npcHandler:say("INCREDIBLE, you did it!! Have fun at Pumin's Domain!", cid)
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
