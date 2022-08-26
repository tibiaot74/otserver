local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end


local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)
 

keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sail between Mistrock and Carlin."})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sail between Mistrock and Carlin."})
keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sail between Mistrock and Carlin."})
keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sail between Mistrock and Carlin."})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sail between Mistrock and Carlin."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't like jobs and works very much, but I lvoe the sea.. so being a captain is the best ever!"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "it's abou.. eum... I have no idea.. where did my watch go?"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you a nice trip between Mistrock and Carlin, no problems.."})
keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I don't have anything to trade.."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "do I look like a smith?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "my name is Eric.. as it always have been.. I think.."})
keywordHandler:addKeyword({'eric'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yup, that's me alright."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
pos = getPlayerPosition(cid)
npc = getCreaturePosition(getNpcCid(  ))
--Make the npc wont send players to the same boat--
if msgcontains(msg, "carlin") and npc.x == 32360 then
	NPCSay("what if.. I told you... that we're already in Carlin?..", 1)
	eric_talk_state = 0
	
elseif msgcontains(msg, "mistrock") and npc.x == 32002 then
	NPCSay("what if.. I told you... that we're already in Mistrock?..", 1)
	eric_talk_state = 0

elseif msgcontains(msg, "") and getPlayerVocation(cid) <= 4 then
	NPCSay("I'm sorry, I only serve premium players!", 1)
	eric_talk_state = 0
	
elseif msgcontains(msg, "") and getQuestPoints(cid) < 10 then
	NPCSay("I'm sorry, but you don't seem experienced enough for this trip! get 10 quest points and come back and I'll gladly help you!", 1)
	eric_talk_state = 0
	
--
--Travel in hurry--
elseif msgcontains(msg, "bring me to mistrock") then
	bcprice = 100
	bcdestination = TravelserviceMistrock
	bcname = "Mistrock"
	if (getTilePzInfo(pos) == FALSE) then
		if doPlayerRemoveMoney(cid, bcprice) == TRUE then
		doTeleportThing(cid, bcdestination)
		doSendMagicEffect(bcdestination, 10)
		NPCSay("Set the sails!", 1)
		eric_talk_state = 0
		else
		NPCSay("You don't have enough money.", 1)
		eric_talk_state = 0
		end
	else
	NPCSay("If you want to travel with the boat you have to stand in it! else you'll just fall off!", 1)
	eric_talk_state = 0	
	end
	
elseif msgcontains(msg, "bring me to carlin") then
	bcprice = 100
	bcdestination = TravelserviceCarlin
	bcname = "Carlin"
	if (getTilePzInfo(pos) == FALSE) then
		if doPlayerRemoveMoney(cid, bcprice) == TRUE then
		doTeleportThing(cid, bcdestination)
		doSendMagicEffect(bcdestination, 10)
		NPCSay("Set the sails!", 1)
		eric_talk_state = 0
		else
		NPCSay("You don't have enough money.", 1)
		eric_talk_state = 0
		end
	else
	NPCSay("If you want to travel with the boat you have to stand in it! else you'll just fall off!", 1)
	eric_talk_state = 0	
	end
--End of Travel in hurry--
	
--Give Destination--
elseif msgcontains(msg, 'mistrock') and npcHandler.focus == cid then
	bcprice = 100
	bcdestination = TravelserviceMistrock
	bcname = "Mistrock"
	NPCSay("Do you seek a passage to ".. bcname .." for ".. bcprice .." gold?", 1)
	eric_talk_state = 9166
	
elseif msgcontains(msg, "carlin") and npcHandler.focus == cid then
	bcprice = 100
	bcdestination = TravelserviceCarlin
	bcname = "Carlin"
	NPCSay("Do you seek a passage to ".. bcname .." for ".. bcprice .." gold?", 1)
	eric_talk_state = 9166
--End of Give Destination--
	

	
	
--System that does the job after confirm destination--
elseif eric_talk_state == 9166 and msgcontains(msg, 'yes') and npcHandler.focus == cid then
	if (getTilePzInfo(pos) == FALSE) then
		if doPlayerRemoveMoney(cid, bcprice) == TRUE then
		doTeleportThing(cid, bcdestination)
		doSendMagicEffect(bcdestination, 10)
		NPCSay("Set the sails!", 1)
		eric_talk_state = 0
		else
		NPCSay("You don't have enough money.", 1)
		eric_talk_state = 0
		end
	else
	NPCSay("If you want to travel with the boat you have to stand in it! else you'll just fall off!", 1)
	eric_talk_state = 0	
	end
--End of the System that does the job after confirm destination--
	
	
end		
    return 1
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())