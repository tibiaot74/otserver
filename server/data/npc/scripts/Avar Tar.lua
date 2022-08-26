local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

local node1 = keywordHandler:addKeyword({'embrace of tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the embrace of tibia for 11000 gold?'})
	node1:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, number = 1, premium = false, cost = 11000})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})
local node2 = keywordHandler:addKeyword({'spiritual shielding'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the spiritual shielding for 11000 gold?'})
	node2:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, number = 2, premium = false, cost = 11000})
	node2:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})
local node3 = keywordHandler:addKeyword({'fire of the suns'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the fire of the suns for 11000 gold?'})
	node3:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, number = 3, premium = false, cost = 11000})
	node3:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})
local node4 = keywordHandler:addKeyword({'wisdom of solitude'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the wisdom of solitude for 11000 gold?'})
	node4:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, number = 4, premium = true, cost = 11000})
	node4:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})
local node5 = keywordHandler:addKeyword({'spark of the phoenix'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the spark of the phoenix for 11000 gold?'})
	node5:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, number = 5, premium = false, cost = 11000})
	node5:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	
	if msgcontains(msg, 'time') then
	local time = getTibiaTime()
	npcHandler:say('It is '.. time.hours .. string.char(58) .. time.minutes ..', right now.')
	
	end
	return true
end
	
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Avar Tar, slayer of monsters, saviour of princesses, and defender of the weak."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a professional hero."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am on a quest for the Thaian king ... as usual, of course."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am on a quest for the Thaian king ... as usual, of course."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am on a quest for the Thaian king ... as usual, of course."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where the army fails a hero like me is needed."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I fought him serveral times, sometimes he killed me, sometimes I killed him, I would say we are even right now, but I am getting better and more powerful each day."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am sure it's hidden in a vault of the Nightmare Knights beneath the Plains of Havoc. I plan an expedition to go there and rout out the Ruthless Seven, but I have to save the world first."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If I had the time I would restore peace in this once proud city, but there's too much to do before I can start that quest."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I've seen it all and done it all ... at least twice."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I saved the women there once or twice."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is a great evil lurking beneath this isle ... and beneath the Plains of Havoc and in the ancient necropolis and beneath the Ghostlands ... well everywhere basically."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is a great evil lurking beneath this isle ... and beneath the Plains of Havoc and in the ancient necropolis and beneath the Ghostlands ... well everywhere basically."})



npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
