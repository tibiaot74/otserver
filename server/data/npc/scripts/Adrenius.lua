dofile(getDataDir() .. 'global/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local fire = createConditionObject(CONDITION_FIRE)
setConditionParam(fire, CONDITION_PARAM_DELAYED, 10)
addDamageCondition(fire, 450, 3000, -10)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end


keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Adrenius."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm a priest of Fafnar."})
keywordHandler:addKeyword({'fafnar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Fafnar is the stronger one of the two suns above our world."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yyyyess. Yes, it's the capital city of Tibia I think."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin? Don't you mean Thais?"})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who needs a king? I don't."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who needs weapons? I never had and i never will have weapons - what for?"})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Help? Help? Nothing more? Don't we all demand some help?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time? What is time? A word? A thing? An object?"})
keywordHandler:addKeyword({'sword'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Swords? Don't you have something else to do?"})
keywordHandler:addKeyword({'desert'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sand, sand and again sand. Sand all over. Yes, I'd say: it's truly a desert!"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What's that? You start annoying me."})
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Leave me alone. I don't want to fight."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Fafnar is the greatest among the gods."})
keywordHandler:addKeyword({'way'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Way? Which way? I forgot where most ways go to... excuse me."})
keywordHandler:addKeyword({'door'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who needs doors? Free your mind!"})
keywordHandler:addKeyword({'secret'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Secrets ... What do you mean?"})
keywordHandler:addKeyword({'treasure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Treasures? What is a treasure for you?"})
keywordHandler:addKeyword({'book'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Read books, it increases your intelligence and, furthermore, it's a great source of inspiration!"})
keywordHandler:addKeyword({'gharonk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hmmmm... I don't know much about it."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you religion and mysticism."})
keywordHandler:addKeyword({'library'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard of the library, but I never was very interested in it."})


function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'netlios') or msgcontains(msg, 'Netlios') then
	NPCSay("This fool! His book is nothing but a hoax! At least I believe that. Or did you find an answer for my questions?", 1)
	adrenius_talk_state = 1
	
	
elseif adrenius_talk_state == 1 and msgcontains(msg, 'yes') or adrenius_talk_state == 1 and msgcontains(msg, 'Yes') then
	NPCSay("By the way, I would like a donation for my temple. Are 500 gold ok?", 1)
	adrenius_talk_state = 2
elseif adrenius_talk_state == 1 and msgcontains(msg, 'no') or adrenius_talk_state == 1 and msgcontains(msg, 'No') then
	NPCSay("Oh. So once again I am proved right.", 1)
	adrenius_talk_state = 0
elseif adrenius_talk_state == 1 and msgcontains(msg, '') then
	NPCSay("You can't even say 'yes' or 'no'. You are not worth talking to me!", 1)
	adrenius_talk_state = 0
	npcHandler:releaseFocus()
	npcHandler:resetNpc()	
	
elseif adrenius_talk_state == 2 and msgcontains(msg, 'yes') or adrenius_talk_state == 2 and msgcontains(msg, 'Yes') then
	if doPlayerRemoveMoney(cid, 500) == TRUE then
	NPCSay("Thank you very much. Now, name me the first person in alphabetical order, his age, his fate, and how long he was on his journeys!", 1)
	adrenius_talk_state = 4	
	else
	NPCSay("You want to fool me? May Fafnar burn your soul!", 1)
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	adrenius_talk_state = 0	
	end
elseif adrenius_talk_state == 2 and msgcontains(msg, '') then
	NPCSay("Then I don't want to talk to you.", 1)
	adrenius_talk_state = 0
	npcHandler:releaseFocus()
	npcHandler:resetNpc()

elseif adrenius_talk_state == 4 and msgcontains(msg, 'anaso') and msgcontains(msg, '41') and msgcontains(msg, 'mother') and msgcontains(msg, '117') or adrenius_talk_state == 4 and msgcontains(msg, 'Anaso') and msgcontains(msg, '41') and msgcontains(msg, 'Mother') and msgcontains(msg, '117') then
	NPCSay("Hmmm, maybe. What can you tell me about the second 'adventurer'?", 1)
	adrenius_talk_state = 5
elseif adrenius_talk_state == 4 and msgcontains(msg, '') then
	NPCSay("No, sorry, that doesn't sound correct to me. Maybe you should reconsider your words one more time...", 1)
	adrenius_talk_state = 4

elseif adrenius_talk_state == 5 and msgcontains(msg, 'elaeus') and msgcontains(msg, '39') and msgcontains(msg, 'dragon') and msgcontains(msg, '100') or adrenius_talk_state == 5 and msgcontains(msg, 'Elaeus') and msgcontains(msg, '39') and msgcontains(msg, 'Dragon') and msgcontains(msg, '100') then
	NPCSay("Yes, that might be true. What did you find out about the third man?", 1)
	adrenius_talk_state = 6
elseif adrenius_talk_state == 5 and msgcontains(msg, '') then
	NPCSay("No, no, no! Think about it, that simply can't be true!", 1)
	adrenius_talk_state = 5

elseif adrenius_talk_state == 6 and msgcontains(msg, 'gadinius') and msgcontains(msg, '42') and msgcontains(msg, 'fire') and msgcontains(msg, '83') or adrenius_talk_state == 6 and msgcontains(msg, 'Gadinius') and msgcontains(msg, '42') and msgcontains(msg, 'Fire') and msgcontains(msg, '83') then
	NPCSay("Correct again! Hmmmm... I doubt you know anything about the fourth person!", 1)
	adrenius_talk_state = 7
elseif adrenius_talk_state == 6 and msgcontains(msg, '') then
	NPCSay("Hmmmm... well, no. That is not true, it does not fit to the data provided by the books.", 1)
	adrenius_talk_state = 6

elseif adrenius_talk_state == 7 and msgcontains(msg, 'heso') and msgcontains(msg, '40') and msgcontains(msg, 'troll') and msgcontains(msg, '66') or adrenius_talk_state == 7 and msgcontains(msg, 'Heso') and msgcontains(msg, '40') and msgcontains(msg, 'Troll') and msgcontains(msg, '66') then
	NPCSay("Yes! Really, how did you figure that out? I bet, you don't know anything about the last adventurer!", 1)
	adrenius_talk_state = 8
elseif adrenius_talk_state == 7 and msgcontains(msg, '') then
	NPCSay("No, sorry. Incorrect...", 1)
	adrenius_talk_state = 7
	
elseif adrenius_talk_state == 8 and msgcontains(msg, 'hestus') and msgcontains(msg, '38') and msgcontains(msg, 'poison') and msgcontains(msg, '134') or adrenius_talk_state == 8 and msgcontains(msg, 'Hestus') and msgcontains(msg, '38') and msgcontains(msg, 'Poison') and msgcontains(msg, '134') then
	NPCSay("That's right! Why didn't I see it? It's obvious, Netlios was right, and his stories are great! Wait, I'll give you something!", 1)
	DESERTTPROOM = doPlayerAddItem(cid, 2088, 1)
	doSetItemActionId(DESERTTPROOM, 2016)
	doSetItemSpecialDescription(DESERTTPROOM, "(Key: 4023)")
	adrenius_talk_state = 0
elseif adrenius_talk_state == 8 and msgcontains(msg, '') then
	NPCSay("Well, and again it was shown: I am right and Netlios is wrong!", 1)
	adrenius_talk_state = 8
	
end		
    return 1
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
