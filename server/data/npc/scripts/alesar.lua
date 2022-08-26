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
shopModule:addSellableItem({'scimitar'}, 2419, 150, 'scimitar')
shopModule:addSellableItem({'giant sword'}, 2393, 17000, 'giant sword')
shopModule:addSellableItem({'serpent sword'}, 2409, 900, 'serpent sword')
shopModule:addSellableItem({'poison dagger'}, 2411, 50, 'poison dagger')
shopModule:addSellableItem({'knight axe'}, 2430, 2000, 'knight axe')
shopModule:addSellableItem({'dragon hammer'}, 2434, 2000, 'dragon hammer')
shopModule:addSellableItem({'skull staff'}, 2436, 6000, 'skull staff')
shopModule:addSellableItem({'dark armor'}, 2489, 400, 'dark armor')
shopModule:addSellableItem({'knight armor'}, 2476, 5000, 'knight armor')
shopModule:addSellableItem({'dark helmet'}, 2490, 250, 'dark helmet')
shopModule:addSellableItem({'warrior helmet'}, 2475, 5000, 'warrior helmet')
shopModule:addSellableItem({'strange helmet'}, 2479, 500, 'strange helmet')
shopModule:addSellableItem({'mystic turban'}, 2663, 150, 'mystic turban')
shopModule:addSellableItem({'knight legs'}, 2477, 5000, 'knight legs')
shopModule:addSellableItem({'tower shield'}, 2528, 8000, 'tower shield')
shopModule:addSellableItem({'black shield'}, 2529, 800, 'black shield')
shopModule:addSellableItem({'ancient shield'}, 2532, 900, 'ancient shield')
shopModule:addSellableItem({'vampire shield'}, 2534, 15000, 'vampire shield')

shopModule:addBuyableItem({'ice rapier'}, 2396, 5000, 'ice rapier')
shopModule:addBuyableItem({'serpent sword'}, 2409, 6000, 'serpent sword')
shopModule:addBuyableItem({'dark armor'}, 2489, 1500, 'dark armor')
shopModule:addBuyableItem({'dark helmet'}, 2490, 1000, 'dark helmet')
shopModule:addBuyableItem({'ancient shield'}, 2532, 5000, 'ancient shield')
npcHandler:addModule(FocusModule:new())