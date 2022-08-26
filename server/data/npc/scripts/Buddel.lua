local keywordHandler = KeywordHandler:new()
        local npcHandler = NpcHandler:new(keywordHandler)
        NpcSystem.parseParameters(npcHandler)
        
        
        
        -- OTServ event handling functions start
        function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
        function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
        function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
        function onThink() 						npcHandler:onThink() end
        -- OTServ event handling functions end
        
        
        -- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
        local travelNode = keywordHandler:addKeyword({'okolnir'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Give me 50 gold and I bring you to Okolnir home of the frost dragons. Alright?'})
        	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 50, destination = {x=21362, y=21427, z=7} })
        	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'SHIP AHOY! I AM BUDDEL THE ..... did you say no??? Alright.'})
        
	local travelNode = keywordHandler:addKeyword({'helheim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Give me 50 gold and I bring you to Helheim. kay?'})
        	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 50, destination = {x=21600, y=21218, z=7} })
        	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'You shouldn\'t miss the experience.'})
        
	local travelNode = keywordHandler:addKeyword({'tyrsung'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Give me 50 gold and I bring you to Tyrsung where the Venoran hunters have their settlement. Alright?'})
        	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 50, destination = {x=21470, y=21273, z=7} })
        	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'You shouldn\'t miss the experience.'})
			
			local travelNode = keywordHandler:addKeyword({'raider camp'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Give me 50 gold and I bring you to the south of Hrodmir where the camps of the barbarians are located. kay?'})
        	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 50, destination = {x=21157, y=21340, z=7} })
        	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'You shouldn\'t miss the experience.'})
       

        npcHandler:addModule(FocusModule:new())