local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
-- OTServ event handling functions end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)
shopModule:addSellableItem({'might ring'}, 2164, 250, 'might ring') 
shopModule:addSellableItem({'energy ring'}, 2167, 100, 'energy ring') 
shopModule:addSellableItem({'life ring'}, 2168, 50, 'life ring') 
shopModule:addSellableItem({'time ring'}, 2169, 100, 'time ring') 
shopModule:addSellableItem({'dwarven ring'}, 2213, 100, 'dwarven ring')
shopModule:addSellableItem({'ring of healing'}, 2214, 100, 'ring of healing') 
shopModule:addSellableItem({'strange talisman'}, 2161, 30, 'strange talisman') 
shopModule:addSellableItem({'silver amulet'}, 2170, 50, 'silver amulet') 
shopModule:addSellableItem({'protection amulet'}, 2200, 100, 'protection amulet')  
shopModule:addSellableItem({'dragon necklace'}, 2201, 100, 'dragon necklace') 
shopModule:addSellableItem({'snakebite rod'}, 2182, 100, 'snakebite rod') 
shopModule:addSellableItem({'moonlight rod'}, 2186, 200, 'moonlight rod') 
shopModule:addSellableItem({'volcanic rod'}, 2185, 1000, 'volcanic rod') 
shopModule:addSellableItem({'quagmire rod'}, 2181, 2000, 'quagmire rod') 
shopModule:addSellableItem({'tempest rod'}, 2183, 3000, 'tempest rod') 
shopModule:addSellableItem({'ankh'}, 2193, 100, 'ankh') 
shopModule:addSellableItem({'mysterious fetish'}, 2194, 50, 'mysterious fetish') 


shopModule:addBuyableItem({'might ring'}, 2164, 5000, 'might ring') 
shopModule:addBuyableItem({'energy ring'}, 2167, 2000, 'energy ring') 
shopModule:addBuyableItem({'life ring'}, 2168, 900, 'life ring') 
shopModule:addBuyableItem({'time ring'}, 2169, 2000, 'time ring') 
shopModule:addBuyableItem({'dwarven ring'}, 2213, 2000, 'dwarven ring')
shopModule:addBuyableItem({'ring of healing'}, 2214, 2000, 'ring of healing') 
shopModule:addBuyableItem({'strange talisman'}, 2161, 100, 'strange talisman') 
shopModule:addBuyableItem({'silver amulet'}, 2170, 100, 'silver amulet')
shopModule:addBuyableItem({'protection amulet'}, 2200, 700, 'protection amulet')
shopModule:addBuyableItem({'dragon necklace'}, 2201, 1000, 'dragon necklace')
npcHandler:addModule(FocusModule:new())