local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
-- OTServ event handling functions end

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) and getPlayerStorageValue(cid, 1038) == 1 then
	    npcHandler:say("teste teste.")
		return true
	end
	
local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

-- Empty Vial
shopModule:addSellableItem({'empty', 'vial'}, 2006, 5, 'vial')

-- Spell Book

shopModule:addBuyableItem({'spellbook'}, 2175, 150,	'spellbook')

-- Wand

shopModule:addBuyableItem({'light wand', 'lightwand'}, 2163, 500, 'magic light wand')
shopModule:addBuyableItem({'wand of vortex', 'vortex'}, 2190, 500, 'wand of vortex')
shopModule:addBuyableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 1000, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of plague', 'plague'}, 2188, 5000, 'wand of plague')
shopModule:addBuyableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 10000, 'wand of cosmic energy')
shopModule:addBuyableItem({'wand of inferno', 'inferno'}, 2187, 15000, 'wand of inferno')

-- Rods

shopModule:addBuyableItem({'snakebite rod', 'snakebite'}, 2182, 500, 'snakebite rod')
shopModule:addBuyableItem({'moonlight rod', 'moonlight'}, 2186, 1000, 'moonlight rod')
shopModule:addBuyableItem({'volcanic rod', 'volcanic'}, 2185, 5000, 'necrotic rod')
shopModule:addBuyableItem({'terra rod', 'terra'}, 2181, 10000, 'terra rod')
shopModule:addBuyableItem({'tempest rod', 'tempest'}, 2183, 15000, 'tempest rod')

-- Fluids

shopModule:addBuyableItem({'life fluid','lifefluid'}, 2006, 60,10,'life fluid')
shopModule:addBuyableItem({'mana fluid','manafluid'},2006,55,7,'mana fluid')

-- Runas 

shopModule:addBuyableItem({'intense healing rune', 'ih'}, 2265, 95, 1, 'intense healing rune')
shopModule:addBuyableItem({'ultimate healing rune', 'uh'}, 2273, 125, 1, 'ultimate healing rune')
shopModule:addBuyableItem({'magic wall rune'}, 2293, 200, 3, 'magic wall rune')
shopModule:addBuyableItem({'destroy field rune'}, 2261, 45, 3, 'destroy field rune')
shopModule:addBuyableItem({'light magic missile rune'}, 2287, 40, 10, 'light magic missile rune')
shopModule:addBuyableItem({'heavy magic missile rune', 'hmm'}, 2311, 50, 5, 'heavy magic missile rune')
shopModule:addBuyableItem({'great fireball rune', 'gfb'}, 2304, 100, 4, 'great fireball rune')
shopModule:addBuyableItem({'explosion rune', 'explosion'}, 2313, 150, 3, 'explosion rune')
shopModule:addBuyableItem({'sudden death rune', 'sd'}, 2268, 225, 1, 'sudden death rune')
shopModule:addBuyableItem({'death arrow rune'}, 2263, 300, 3, 'death arrow rune')
shopModule:addBuyableItem({'animate dead rune'}, 2316, 375, 1, 'animate dead rune')
shopModule:addBuyableItem({'convince creature rune'}, 2290, 80, 1, 'convince creature rune')
shopModule:addBuyableItem({'chameleon rune'}, 2291, 210, 1, 'chameleon rune')
shopModule:addBuyableItem({'desintegrate'}, 2310, 80,  3, 'desintegreate rune')
shopModule:addBuyableItem({'blank', 'rune'},2260, 10,'blank rune')
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())