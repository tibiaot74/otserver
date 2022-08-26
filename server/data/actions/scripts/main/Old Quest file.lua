function onUse(cid, item, frompos, item2, topos)


-- Bright Sword --
if item.uid == 8001 then
	if getPlayerStorageValue(cid,8001) == -1 or getPlayerStorageValue(cid,8001) == 0 then
		if getPlayerFreeCap(cid) <= 38 then
		doPlayerSendTextMessage(cid,22,"You need 38 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bright sword.")
	doPlayerAddItem(cid,2407,1) 					-- Bright sword
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2156, 1)			-- Red Gem
	setPlayerStorageValue(cid,8001,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
----- 
-- Crystal wand --
elseif item.uid == 8002 then
	if getPlayerStorageValue(cid,8002) == -1 or getPlayerStorageValue(cid,8002) == 0 then
		if getPlayerFreeCap(cid) <= 40 then
		doPlayerSendTextMessage(cid,22,"You need 40 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a carlin sword.")
	doPlayerAddItem(cid, 2184, 1) 					--Crystal wand
	doPlayerAddItem(cid, 2268, 2) 					--Sudden death rune
	setPlayerStorageValue(cid,8002,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- White Pearl --
elseif item.uid == 8003 then
	if getPlayerStorageValue(cid,8003) == -1 or getPlayerStorageValue(cid,8003) == 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a white pearl.")
	doPlayerAddItem(cid,2143,1)						--White pearl
	setPlayerStorageValue(cid,8003,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Vampire Shield --
elseif item.uid == 8004 then
	if getPlayerStorageValue(cid,8004) == -1 or getPlayerStorageValue(cid,8004) == 0 then
		if getPlayerFreeCap(cid) <= 38 then
		doPlayerSendTextMessage(cid,22,"You need 38 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a vampire shield.")
	doPlayerAddItem(cid,2534,1)						--Vampire Shield
	setPlayerStorageValue(cid,8004,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Dragon Lance --
elseif item.uid == 8005 then
	if getPlayerStorageValue(cid,8005) == -1 or getPlayerStorageValue(cid,8005) == 0 then
		if getPlayerFreeCap(cid) <= 83 then
		doPlayerSendTextMessage(cid,22,"You need 83 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a vampire shield.")
	doPlayerAddItem(cid,2414,1)						--Dragon lance
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2174, 1) 			--Strange symbol
	doAddContainerItem(container, 2144, 1)  		--Black pearl
	doAddContainerItem(container, 2194, 1)			--Mysterious Fetish
	setPlayerStorageValue(cid,8005,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Time Ring --
elseif item.uid == 8006 then
	if getPlayerStorageValue(cid,8006) == -1 or getPlayerStorageValue(cid,8006) == 0 then
		if getPlayerFreeCap(cid) <= 46 then
		doPlayerSendTextMessage(cid,22,"You need 46 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2206, 1) 			--Time ring
	doAddContainerItem(container, 2198, 1)  		--Elven amulet
	doAddContainerItem(container, 2192, 1)			--Crystal Ball
	setPlayerStorageValue(cid,8006,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Steel Helmet --
elseif item.uid == 8007 then
	if getPlayerStorageValue(cid,8007) == -1 or getPlayerStorageValue(cid,8007) == 0 then
		if getPlayerFreeCap(cid) <= 57 then
		doPlayerSendTextMessage(cid,22,"You need 57 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a steel helmet.")
	doPlayerAddItem(cid, 2457, 1)					--Steel Helmet
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2148, 47) 		--Gold coins
	doAddContainerItem(container, 2148, 56)  		--Gold coins
	doAddContainerItem(container, 1949, 1)			--Scroll
	setPlayerStorageValue(cid,8007,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Spike Sword --
elseif item.uid == 8008 then
	if getPlayerStorageValue(cid,8008) == -1 or getPlayerStorageValue(cid,8008) == 0 then
		if getPlayerFreeCap(cid) <= 50 then
		doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a spike sword.")
	doPlayerAddItem(cid, 2383, 1)					--Spike Sword
	setPlayerStorageValue(cid,8008,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Amazon Witch Hill --
elseif item.uid == 8009 then
	if getPlayerStorageValue(cid,8009) == -1 or getPlayerStorageValue(cid,8009) == 0 then
		if getPlayerFreeCap(cid) <= 42 then
		doPlayerSendTextMessage(cid,22,"You need 42 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2143, 1)			--White pearl
	doAddContainerItem(container, 2144, 2)			--Black pearl
	doAddContainerItem(container, 2229, 3) 			--Skull
	doAddContainerItem(container, 2129, 1)			--Wolth tooth chain
	doAddContainerItem(container, 2213, 1)			--Dwarven ring
	doAddContainerItem(container, 2148, 100)		--Gold coin
	doAddContainerItem(container, 2125, 1)			--Crystal necklace
	setPlayerStorageValue(cid,8009,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Amazon Witch House --
elseif item.uid == 8010 then
	if getPlayerStorageValue(cid,8010) == -1 or getPlayerStorageValue(cid,8010) == 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2143, 2)			--White pearl
	doAddContainerItem(container, 2144, 1)			--Black pearl
	doAddContainerItem(container, 2213, 1)			--Wolth tooth chain
	doAddContainerItem(container, 2148, 53)			--Gold coin
	setPlayerStorageValue(cid,8010,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Mummy Quest --
elseif item.uid == 8011 then
	if getPlayerStorageValue(cid,8011) == -1 or getPlayerStorageValue(cid,8011) == 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2134, 1)			--Silver Brooch
	doAddContainerItem(container, 2147, 2)			--Small Rubie
	doAddContainerItem(container, 2145, 3)			--Small Diamond
	setPlayerStorageValue(cid,8011,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Orc Shaman Quest --
elseif item.uid == 8012 then
	if getPlayerStorageValue(cid,8012) == -1 or getPlayerStorageValue(cid,8012) == 0 then
		if getPlayerFreeCap(cid) <= 16 then
		doPlayerSendTextMessage(cid,22,"You need 16 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2162, 1)			--Magic lightwand
	doAddContainerItem(container, 2208, 2)			--Axe ring
	doAddContainerItem(container, 2260, 3)			--Blank rune
	setPlayerStorageValue(cid,8012,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Ring Quest --
elseif item.uid == 8013 then
	if getPlayerStorageValue(cid,8013) == -1 or getPlayerStorageValue(cid,8013) == 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2169, 1)			--Time ring
	doAddContainerItem(container, 2207, 2)			--Sword ring
	setPlayerStorageValue(cid,8013,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Power Bolt Quest --
elseif item.uid == 8014 then
	if getPlayerStorageValue(cid,8014) == -1 or getPlayerStorageValue(cid,8014) == 0 then
		if getPlayerFreeCap(cid) <= 106 then
		doPlayerSendTextMessage(cid,22,"You need 106 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2547, 5)			--Power bolt
	doAddContainerItem(container, 2546, 12)			--Burst Arrow
	doAddContainerItem(container, 2377, 1)			--Two handed sword	
	doAddContainerItem(container, 1950, 1)			--Book		
	setPlayerStorageValue(cid,8014,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Poison dagger Quest --
elseif item.uid == 8015 then
	if getPlayerStorageValue(cid,8015) == -1 or getPlayerStorageValue(cid,8015) == 0 then
		if getPlayerFreeCap(cid) <= 60 then
		doPlayerSendTextMessage(cid,22,"You need 60 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a backpack.")
	container = doPlayerAddItem(cid, 1988, 1)
	doAddContainerItem(container, 2411, 1)			--Poison Dagger
	doAddContainerItem(container, 2411, 1)			--Poison Dagger
	doAddContainerItem(container, 2545, 30)			--Poison arrow
	setPlayerStorageValue(cid,8015,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Plate Armor Quest --
elseif item.uid == 8016 then
	if getPlayerStorageValue(cid,8016) == -1 or getPlayerStorageValue(cid,8016) == 0 then
		if getPlayerFreeCap(cid) <= 120 then
		doPlayerSendTextMessage(cid,22,"You need 120 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a plate armor.")
	doPlayerAddItem(cid, 2463, 1)
	setPlayerStorageValue(cid,8016,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Ornamented Shield Quest --
elseif item.uid == 8017 then
	if getPlayerStorageValue(cid,8017) == -1 or getPlayerStorageValue(cid,8017) == 0 then
		if getPlayerFreeCap(cid) <= 147 then
		doPlayerSendTextMessage(cid,22,"You need 147 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a crystal key and a bag.")
	KEY = doPlayerAddItem(cid, 2090, 1)	--Crystal Key (Knightwatch Tower, POH)
	doSetItemActionId(KEY, 2001)
	doSetItemSpecialDescription(KEY, "(Key: 3702)")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2524, 1)			--Ornamented Shield
	doAddContainerItem(container, 2383, 1)			--Spike sword
	doAddContainerItem(container, 2201, 200)		--Dragon Necklace
	doAddContainerItem(container, 2164, 20)			--Might Ring
	doAddContainerItem(container, 2169, 1)			--Time ring
	doAddContainerItem(container, 2199, 150)		--Garlic Necklace
	doAddContainerItem(container, 2152, 5)			--Platinum coin
	doAddContainerItem(container, 2600, 1)			--Inkwell
	setPlayerStorageValue(cid,8017,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Orc Fortress Quest-Knight Armor --
elseif item.uid == 8018 then
	if getPlayerStorageValue(cid,8018) == -1 or getPlayerStorageValue(cid,8018) == 0 then
		if getPlayerFreeCap(cid) <= 120 then
		doPlayerSendTextMessage(cid,22,"You need 120 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a knight armor.")
	doPlayerAddItem(cid, 2476, 1)	--Knight Armor
	setPlayerStorageValue(cid,8018,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Orc Fortress Quest-Knight Axe --
elseif item.uid == 8019 then
	if getPlayerStorageValue(cid,8019) == -1 or getPlayerStorageValue(cid,8019) == 0 then
		if getPlayerFreeCap(cid) <= 59 then
		doPlayerSendTextMessage(cid,22,"You need 59 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a knight axe.")
	doPlayerAddItem(cid, 2430, 1)	--Knight Axe
	setPlayerStorageValue(cid,8019,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Orc Fortress Quest-Fire Sword --
elseif item.uid == 8020 then
	if getPlayerStorageValue(cid,8020) == -1 or getPlayerStorageValue(cid,8020) == 0 then
		if getPlayerFreeCap(cid) <= 23 then
		doPlayerSendTextMessage(cid,22,"You need 23 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a fire sword.")
	doPlayerAddItem(cid, 2392, 1)	--Fire sword
	setPlayerStorageValue(cid,8020,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Old City --
elseif item.uid == 8021 then
	if getPlayerStorageValue(cid,8021) == -1 or getPlayerStorageValue(cid,8021) == 0 then
		if getPlayerFreeCap(cid) <= 168 then
		doPlayerSendTextMessage(cid,22,"You need 168 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found some stuffs.")
	doPlayerAddItem(cid,2465,1)						--Brass armor
	doPlayerAddItem(cid,2460,1)						--Brass helmet
	doPlayerAddItem(cid,2388,1)						--Hatchet
	doPlayerAddItem(cid,2399,13)					--Throwing star
	setPlayerStorageValue(cid,8021,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Naginata Quest --
elseif item.uid == 8022 then
	if getPlayerStorageValue(cid,8022) == -1 or getPlayerStorageValue(cid,8022) == 0 then
		if getPlayerFreeCap(cid) <= 80 then
		doPlayerSendTextMessage(cid,22,"You need 80 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a naginata.")
	doPlayerAddItem(cid,2426,1)						--Naginata
	setPlayerStorageValue(cid,8022,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Stealth Ring (Darashia Minotaurs) --
elseif item.uid == 8023 then
	if getPlayerStorageValue(cid,8023) == -1 or getPlayerStorageValue(cid,8023) == 0 then
		if getPlayerFreeCap(cid) <= 9 then
		doPlayerSendTextMessage(cid,22,"You need 9 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a stealth ring.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2165, 1)			--Stealth ring
	setPlayerStorageValue(cid,8023,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Protection amulet (Darashia Minotaurs) --
elseif item.uid == 8024 then
	if getPlayerStorageValue(cid,8024) == -1 or getPlayerStorageValue(cid,8024) == 0 then
		if getPlayerFreeCap(cid) <= 14 then
		doPlayerSendTextMessage(cid,22,"You need 14 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a protection amulet.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2200, 250)			--Protection amulet
	setPlayerStorageValue(cid,8024,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Medusa shield quest (Derfia) --
elseif item.uid == 8025 then
	if getPlayerStorageValue(cid,8025) == -1 or getPlayerStorageValue(cid,8025) == 0 then
		if getPlayerFreeCap(cid) <= 105 then
		doPlayerSendTextMessage(cid,22,"You need 105 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a medusa shield.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2656, 1)			--Blue robe
	doAddContainerItem(container, 2436, 1)			--Skull staff
	doAddContainerItem(container, 2536, 1)			--Medusa shield
	setPlayerStorageValue(cid,8025,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
--  Hat of the mad (Near Mintwallin) --
elseif item.uid == 8026 then
	if getPlayerStorageValue(cid,8026) == -1 or getPlayerStorageValue(cid,8026) == 0 then
		if getPlayerFreeCap(cid) <= 31 then
		doPlayerSendTextMessage(cid,22,"You need 31 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a hat of the mad.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2131, 1)			--Star amulet
	doAddContainerItem(container, 2197, 5)			--Stone skin amulet
	doAddContainerItem(container, 2323, 1)			--Hat of the mad
	setPlayerStorageValue(cid,8026,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Wedding Ring --
elseif item.uid == 8027 then
	if getPlayerStorageValue(cid,8027) == -1 or getPlayerStorageValue(cid,8027) == 0 then
		if getPlayerFreeCap(cid) <= 72 then
		doPlayerSendTextMessage(cid,22,"You need 72 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a longsword.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2397, 1)			--Longsword
	doAddContainerItem(container, 2560, 1)			--Mirror
	doAddContainerItem(container, 2260, 1)			--Blank rune
	doAddContainerItem(container, 2260, 1)			--Blank rune
	doAddContainerItem(container, 2260, 1)			--Blank rune
	doAddContainerItem(container, 2108, 1)			--Wooden doll
	doAddContainerItem(container, 2148, 76)			--Gold coin
	doAddContainerItem(container, 2121, 1)			--Wedding ring
	setPlayerStorageValue(cid,8027,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Iron helmet (POH) --
elseif item.uid == 8028 then
	if getPlayerStorageValue(cid,8028) == -1 or getPlayerStorageValue(cid,8028) == 0 then
		if getPlayerFreeCap(cid) <= 146 then
		doPlayerSendTextMessage(cid,22,"You need 146 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2459, 1)			--Iron helmet
	doAddContainerItem(container, 2268, 2)			--Sudden death rune
	doAddContainerItem(container, 2467, 1)			--Leather armor
	doAddContainerItem(container, 2238, 1)			--Worn leather boots
	doAddContainerItem(container, 2397, 1)			--Long sword
	doAddContainerItem(container, 2597, 1)			--Letter
	setPlayerStorageValue(cid,8028,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Hydra Egg (PH) --
elseif item.uid == 8029 then
	if getPlayerStorageValue(cid,8029) == -1 or getPlayerStorageValue(cid,8029) == 0 then
		if getPlayerFreeCap(cid) <= 5 then
		doPlayerSendTextMessage(cid,22,"You need 5 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a hydra egg.")
	doPlayerAddItem(cid, 4850, 1)
	setPlayerStorageValue(cid,8029,1)
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Ghoul Room (Thais) --
elseif item.uid == 8030 then
	if getPlayerStorageValue(cid,8030) == -1 or getPlayerStorageValue(cid,8030) == 0 then
		if getPlayerFreeCap(cid) <= 13 then
		doPlayerSendTextMessage(cid,22,"You need 13 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2209, 1)			--Club ring
	doAddContainerItem(container, 2199, 1)			--Garlic necklace
	setPlayerStorageValue(cid,8030,1)	
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Fire Axe (Edron Dragon Lair) --
elseif item.uid == 8031 then
	if getPlayerStorageValue(cid,8031) == -1 or getPlayerStorageValue(cid,8031) == 0 then
		if getPlayerFreeCap(cid) <= 56 then
		doPlayerSendTextMessage(cid,22,"You need 56 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a fire axe.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2214, 1)			--Ring of healing
	doAddContainerItem(container, 2201, 200)		--Dragon necklace
	doAddContainerItem(container, 2145, 7)			--Small Diamond
	doAddContainerItem(container, 2432, 1)			--Fire axe
	setPlayerStorageValue(cid,8031,1)	
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Life Ring (Thais Beholder cave) --
elseif item.uid == 8032 then
	if getPlayerStorageValue(cid,8032) == -1 or getPlayerStorageValue(cid,8032) == 0 then
		if getPlayerFreeCap(cid) <= 16 then
		doPlayerSendTextMessage(cid,22,"You need 16 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2168, 1)			--Life ring
	doAddContainerItem(container, 2201, 200)		--Dragon necklace
	setPlayerStorageValue(cid,8032,1)	
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Triangle Tower --
elseif item.uid == 8033 then
	if getPlayerStorageValue(cid,8033) == -1 or getPlayerStorageValue(cid,8033) == 0 then
		if getPlayerFreeCap(cid) <= 14 then
		doPlayerSendTextMessage(cid,22,"You need 14 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2199, 150)		--Garlic Necklace
	doAddContainerItem(container, 2213, 1)			--Dwarven ring
	doAddContainerItem(container, 2146, 2)			--Small Sapphire
	setPlayerStorageValue(cid,8033,1)	
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Elephant Tusk --
elseif item.uid == 8034 then
	if getPlayerStorageValue(cid,8034) == -1 or getPlayerStorageValue(cid,8034) == 0 then
		if getPlayerFreeCap(cid) <= 30 then
		doPlayerSendTextMessage(cid,22,"You need 30 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found two elephant tusks.")
	doPlayerAddItem(cid, 3956, 1)
	setPlayerStorageValue(cid,8034,1)	
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Panpipe Quest (Jakunarf Desert) --
elseif item.uid == 8035 then
	if getPlayerStorageValue(cid,8035) == -1 or getPlayerStorageValue(cid,8035) == 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2074, 1)			--Panpipes
	doAddContainerItem(container, 2150, 2)			--Small Amethyst
	doAddContainerItem(container, 2166, 1)			--Power Ring
	setPlayerStorageValue(cid,8035,1)	
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Panpipe Quest-Key (Jakunarf Desert) --
elseif item.uid == 8036 then
	if getPlayerStorageValue(cid,8036) == -1 or getPlayerStorageValue(cid,8036) == 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a silver key.")
	KEY = doPlayerAddItem(cid, 2088, 1)	--Silver (Panpipe quest, Jakunarf Desert)
	doSetItemSpecialDescription(KEY, "(Key: 4055)")
	doSetItemActionId(KEY, 2002)
	setPlayerStorageValue(cid,8036,1)	
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Double Hero-club ring Quest --
elseif item.uid == 8037 then
	if getPlayerStorageValue(cid,8037) == -1 or getPlayerStorageValue(cid,8037) == 0 then
		if getPlayerFreeCap(cid) <= 9 then
		doPlayerSendTextMessage(cid,22,"You need 9 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2209, 1)			--Club Ring
	setPlayerStorageValue(cid,8037,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Double Hero-Red gem Quest --
elseif item.uid == 8038 then
	if getPlayerStorageValue(cid,8038) == -1 or getPlayerStorageValue(cid,8038) == 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a red gem.")
	doPlayerAddItem(cid, 2156, 1)				--Red Gem
	setPlayerStorageValue(cid,8038,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Gobblin King's Treasure-Steel shield --
elseif item.uid == 8039 then
	if getPlayerStorageValue(cid,8039) == -1 or getPlayerStorageValue(cid,8039) == 0 then
		if getPlayerFreeCap(cid) <= 69 then
		doPlayerSendTextMessage(cid,22,"You need 69 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a steel shield.")
	doPlayerAddItem(cid, 2509, 1)				--Steel shield
	setPlayerStorageValue(cid,8039,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Gobblin King's Treasure-Silver amulet --
elseif item.uid == 8040 then
	if getPlayerStorageValue(cid,8040) == -1 or getPlayerStorageValue(cid,8040) == 0 then
		if getPlayerFreeCap(cid) <= 5 then
		doPlayerSendTextMessage(cid,22,"You need 5 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a steel shield.")
	doPlayerAddItem(cid, 2170, 200)				--Silver amulet
	setPlayerStorageValue(cid,8040,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Behemoth Quest-Demon shield --
elseif item.uid == 8041 then
	if getPlayerStorageValue(cid,8041) == -1 or getPlayerStorageValue(cid,8041) == 0 then
		if getPlayerFreeCap(cid) <= 26 then
		doPlayerSendTextMessage(cid,22,"You need 26 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a demon shield.")
	doPlayerAddItem(cid, 2520, 1)				--Demon shield
	setPlayerStorageValue(cid,8041,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Behemoth Quest-Golden armor --
elseif item.uid == 8042 then
	if getPlayerStorageValue(cid,8042) == -1 or getPlayerStorageValue(cid,8042) == 0 then
		if getPlayerFreeCap(cid) <= 80 then
		doPlayerSendTextMessage(cid,22,"You need 80 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a golden armor.")
	doPlayerAddItem(cid, 2466, 1)				--Golden armor
	setPlayerStorageValue(cid,8042,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Behemoth Quest-Guardian halberd --
elseif item.uid == 8043 then
	if getPlayerStorageValue(cid,8043) == -1 or getPlayerStorageValue(cid,8043) == 0 then
		if getPlayerFreeCap(cid) <= 110 then
		doPlayerSendTextMessage(cid,22,"You need 110 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a guadian halberd.")
	doPlayerAddItem(cid, 2427, 1)				--Guardian halberd
	setPlayerStorageValue(cid,8042,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Behemoth Quest-Bag --
elseif item.uid == 8044 then
	if getPlayerStorageValue(cid,8044) == -1 or getPlayerStorageValue(cid,8044) == 0 then
		if getPlayerFreeCap(cid) <= 17 then
		doPlayerSendTextMessage(cid,22,"You need 17 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1987, 1)
	doAddContainerItem(container, 2171, 1)			--Platinum amulet
	doAddContainerItem(container, 2168, 1)			--Life ring
	doAddContainerItem(container, 2124, 1)			--Crystal ring
	doAddContainerItem(container, 2145, 3)			--Small diamonds
	doAddContainerItem(container, 2146, 4)			--Small sapphires
	setPlayerStorageValue(cid,8044,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Deeper Fibula-Golden Key --
elseif item.uid == 8045 then
	if getPlayerStorageValue(cid,8045) == -1 or getPlayerStorageValue(cid,8045) == 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a golden key.")
	KEY = doPlayerAddItem(cid, 2091, 1)	--Golden Tower (Deeper Fibula Door)
	doSetItemActionId(KEY, 2003)
	doSetItemSpecialDescription(KEY, "(Key: 3980)")
	setPlayerStorageValue(cid,8045,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Deeper Fibula-Knight axe --
elseif item.uid == 8046 then
	if getPlayerStorageValue(cid,8046) == -1 or getPlayerStorageValue(cid,8046) == 0 then
		if getPlayerFreeCap(cid) <= 59 then
		doPlayerSendTextMessage(cid,22,"You need 59 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a knight axe.")
	doPlayerAddItem(cid, 2430, 1)				--Knight axe
	setPlayerStorageValue(cid,8046,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Deeper Fibula-Warrior helmet --
elseif item.uid == 8047 then
	if getPlayerStorageValue(cid,8047) == -1 or getPlayerStorageValue(cid,8047) == 0 then
		if getPlayerFreeCap(cid) <= 68 then
		doPlayerSendTextMessage(cid,22,"You need 68 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a warrior helmet.")
	doPlayerAddItem(cid, 2475, 1)				--Warrior helmet
	setPlayerStorageValue(cid,8047,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Deeper Fibula-Elven amulet --
elseif item.uid == 8048 then
	if getPlayerStorageValue(cid,8048) == -1 or getPlayerStorageValue(cid,8048) == 0 then
		if getPlayerFreeCap(cid) <= 3 then
		doPlayerSendTextMessage(cid,22,"You need 3 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a elven amulet.")
	doPlayerAddItem(cid, 2198, 50)				--Elven amulet
	setPlayerStorageValue(cid,8048,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Deeper Fibula-Tower shield --
elseif item.uid == 8049 then
	if getPlayerStorageValue(cid,8049) == -1 or getPlayerStorageValue(cid,8049) == 0 then
		if getPlayerFreeCap(cid) <= 82 then
		doPlayerSendTextMessage(cid,22,"You need 82 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a tower shield.")
	doPlayerAddItem(cid, 2528, 1)				--Tower shield
	setPlayerStorageValue(cid,8049,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Deeper Fibula-Dwarven ring --
elseif item.uid == 8050 then
	if getPlayerStorageValue(cid,8050) == -1 or getPlayerStorageValue(cid,8050) == 0 then
		if getPlayerFreeCap(cid) <= 2 then
		doPlayerSendTextMessage(cid,22,"You need 2 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a dwarven ring.")
	doPlayerAddItem(cid, 2213, 1)				--Dwarven ring
	setPlayerStorageValue(cid,8050,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Tripple UH Quest --
elseif item.uid == 8051 then
	if getPlayerStorageValue(cid,8051) == -1 or getPlayerStorageValue(cid,8051) == 0 then
		if getPlayerFreeCap(cid) <= 2 then
		doPlayerSendTextMessage(cid,22,"You need 2 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a ultimate healing rune.")
	doPlayerAddItem(cid, 2273, 3)				--Ultimate healing rune
	setPlayerStorageValue(cid,8051,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Battle axe --
elseif item.uid == 8052 then
	if getPlayerStorageValue(cid,8052) == -1 or getPlayerStorageValue(cid,8052) == 0 then
		if getPlayerFreeCap(cid) <= 50 then
		doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a battle axe.")
	doPlayerAddItem(cid, 2378, 1)				--Battle axe
	setPlayerStorageValue(cid,8052,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Battle hammer (Thais Lighthouse)--
elseif item.uid == 8053 then
	if getPlayerStorageValue(cid,8053) == -1 or getPlayerStorageValue(cid,8053) == 0 then
		if getPlayerFreeCap(cid) <= 68 then
		doPlayerSendTextMessage(cid,22,"You need 68 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a battle hammer.")
	doPlayerAddItem(cid, 2417, 1)				--Battle hammer
	setPlayerStorageValue(cid,8053,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Dark shield (Thais Lighthouse)--
elseif item.uid == 8054 then
	if getPlayerStorageValue(cid,8054) == -1 or getPlayerStorageValue(cid,8054) == 0 then
		if getPlayerFreeCap(cid) <= 52 then
		doPlayerSendTextMessage(cid,22,"You need 52 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a dark shield.")
	doPlayerAddItem(cid, 2521, 1)				--Dark Shield
	setPlayerStorageValue(cid,8054,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Devil helmet (Close to Mintwallin)--
elseif item.uid == 8055 then
	if getPlayerStorageValue(cid,8055) == -1 or getPlayerStorageValue(cid,8055) == 0 then
		if getPlayerFreeCap(cid) <= 50 then
		doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a devil helmet.")
	doPlayerAddItem(cid, 2462, 1)				--Devil helmet
	setPlayerStorageValue(cid,8055,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Halberd (Close to Mintwallin)--
elseif item.uid == 8056 then
	if getPlayerStorageValue(cid,8056) == -1 or getPlayerStorageValue(cid,8056) == 0 then
		if getPlayerFreeCap(cid) <= 91 then
		doPlayerSendTextMessage(cid,22,"You need 91 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a halberd.")
	doPlayerAddItem(cid, 2381, 1)				--Halberd
	doPlayerAddItem(cid, 2146, 4)				--Small sapphire
	setPlayerStorageValue(cid,8056,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Dwarven Axe(Dwarven axe quest) --
elseif item.uid == 8057 then
	if getPlayerStorageValue(cid,8057) == -1 or getPlayerStorageValue(cid,8057) == 0 then
		if getPlayerFreeCap(cid) <= 82 then
		doPlayerSendTextMessage(cid,22,"You need 82 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a dwarven axe.")
	doPlayerAddItem(cid, 2435, 1)				--Dwarven axe
	setPlayerStorageValue(cid,8057,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- War hammer(Dwarven axe quest) --
elseif item.uid == 8058 then
	if getPlayerStorageValue(cid,8058) == -1 or getPlayerStorageValue(cid,8058) == 0 then
		if getPlayerFreeCap(cid) <= 85 then
		doPlayerSendTextMessage(cid,22,"You need 85 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a war hammer.")
	doPlayerAddItem(cid, 2391, 1)				--War hammer
	setPlayerStorageValue(cid,8058,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Throwing star(Thais acient temple) --
elseif item.uid == 8059 then
	if getPlayerStorageValue(cid,8059) == -1 or getPlayerStorageValue(cid,8059) == 0 then
		if getPlayerFreeCap(cid) <= 20 then
		doPlayerSendTextMessage(cid,22,"You need 20 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found ten throwing stars.")
	doPlayerAddItem(cid, 2399, 10)				--Throwing star
	setPlayerStorageValue(cid,8059,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Barbarian axe --
elseif item.uid == 8060 then
	if getPlayerStorageValue(cid,8060) == -1 or getPlayerStorageValue(cid,8060) == 0 then
		if getPlayerFreeCap(cid) <= 51 then
		doPlayerSendTextMessage(cid,22,"You need 51 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a barbarian axe.")
	doPlayerAddItem(cid, 2429, 1)				--Barbarian axe
	setPlayerStorageValue(cid,8060,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Scimitar --
elseif item.uid == 8061 then
	if getPlayerStorageValue(cid,8061) == -1 or getPlayerStorageValue(cid,8061) == 0 then
		if getPlayerFreeCap(cid) <= 29 then
		doPlayerSendTextMessage(cid,22,"You need 29 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a scimitar.")
	doPlayerAddItem(cid, 2419, 1)				--Scimitar
	setPlayerStorageValue(cid,8061,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Iron hammer --
elseif item.uid == 8062 then
	if getPlayerStorageValue(cid,8062) == -1 or getPlayerStorageValue(cid,8062) == 0 then
		if getPlayerFreeCap(cid) <= 66 then
		doPlayerSendTextMessage(cid,22,"You need 66 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a iron hammer.")
	doPlayerAddItem(cid, 2422, 1)				--Iron hammer
	setPlayerStorageValue(cid,8062,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Dead Archer --
elseif item.uid == 8063 then
	if getPlayerStorageValue(cid,8063) == -1 or getPlayerStorageValue(cid,8063) == 0 then
		if getPlayerFreeCap(cid) <= 39 then
		doPlayerSendTextMessage(cid,22,"You need 39 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bow.")
	doPlayerAddItem(cid, 2006, 10)				--Life fluid
	doPlayerAddItem(cid, 2006, 7)				--Mana fluid
	doPlayerAddItem(cid, 2545, 5)				--Poison arrow
	doPlayerAddItem(cid, 2456, 1)				--Bow
	setPlayerStorageValue(cid,8063,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Brass legs --
elseif item.uid == 8064 then
	if getPlayerStorageValue(cid,8064) == -1 or getPlayerStorageValue(cid,8064) == 0 then
		if getPlayerFreeCap(cid) <= 38 then
		doPlayerSendTextMessage(cid,22,"You need 38 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a pair of brass legs.")
	doPlayerAddItem(cid, 2478, 1)				--Brass legs
	setPlayerStorageValue(cid,8064,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Garlic Necklace --
elseif item.uid == 8065 then
	if getPlayerStorageValue(cid,8065) == -1 or getPlayerStorageValue(cid,8065) == 0 then
		if getPlayerFreeCap(cid) <= 4 then
		doPlayerSendTextMessage(cid,22,"You need 4 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a garlic necklace.")
	doPlayerAddItem(cid, 2199, 150)				--Garlick necklace
	setPlayerStorageValue(cid,8065,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Noble Armor --
elseif item.uid == 8066 then
	if getPlayerStorageValue(cid,8066) == -1 or getPlayerStorageValue(cid,8066) == 0 then
		if getPlayerFreeCap(cid) <= 120 then
		doPlayerSendTextMessage(cid,22,"You need 120 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a noble armor.")
	doPlayerAddItem(cid, 2486, 1)				--Noble armor
	setPlayerStorageValue(cid,8066,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Crown helmet --
elseif item.uid == 8067 then
	if getPlayerStorageValue(cid,8067) == -1 or getPlayerStorageValue(cid,8067) == 0 then
		if getPlayerFreeCap(cid) <= 30 then
		doPlayerSendTextMessage(cid,22,"You need 30 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a crown helmet.")
	doPlayerAddItem(cid, 2491, 1)				--Crown helmet
	setPlayerStorageValue(cid,8067,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Dark armor --
elseif item.uid == 8068 then
	if getPlayerStorageValue(cid,8068) == -1 or getPlayerStorageValue(cid,8068) == 0 then
		if getPlayerFreeCap(cid) <= 120 then
		doPlayerSendTextMessage(cid,22,"You need 120 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a dark armor.")
	doPlayerAddItem(cid, 2489, 1)				--Dark armor
	setPlayerStorageValue(cid,8068,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Crusader helmet --
elseif item.uid == 8069 then
	if getPlayerStorageValue(cid,8069) == -1 or getPlayerStorageValue(cid,8069) == 0 then
		if getPlayerFreeCap(cid) <= 52 then
		doPlayerSendTextMessage(cid,22,"You need 52 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a crusader helmet.")
	doPlayerAddItem(cid, 2497, 1)				--Crusader helmet
	setPlayerStorageValue(cid,8069,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Dwarven armor --
elseif item.uid == 8070 then
	if getPlayerStorageValue(cid,8070) == -1 or getPlayerStorageValue(cid,8070) == 0 then
		if getPlayerFreeCap(cid) <= 130 then
		doPlayerSendTextMessage(cid,22,"You need 130 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a dwarven armor.")
	doPlayerAddItem(cid, 2503, 1)				--Dwarven armor
	setPlayerStorageValue(cid,8070,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Desert quest --
elseif item.uid == 8071 then
	if getPlayerStorageValue(cid,8071) == -1 or getPlayerStorageValue(cid,8071) == 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found 100 platinum coins.")
	doPlayerAddItem(cid, 2152, 100)				--platinum coin
	setPlayerStorageValue(cid,8071,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Desert quest --
elseif item.uid == 8072 then
	if getPlayerStorageValue(cid,8072) == -1 or getPlayerStorageValue(cid,8072) == 0 then
		if getPlayerFreeCap(cid) <= 34 then
		doPlayerSendTextMessage(cid,22,"You need 34 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a bag.")
	container = doPlayerAddItem(cid, 1991, 1)
	doAddContainerItem(container, 2200, 250)			--Protection amulet
	doAddContainerItem(container, 2214, 1)				--Ring of healing
	doAddContainerItem(container, 2162, 1)				--Magic lightwand
	doAddContainerItem(container, 2193, 1)				--Ankh
	setPlayerStorageValue(cid,8072,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Black Knight Villa --
elseif item.uid == 8073 then
	if getPlayerStorageValue(cid,8073) == -1 or getPlayerStorageValue(cid,8073) == 0 then
		if getPlayerFreeCap(cid) <= 99 then
		doPlayerSendTextMessage(cid,22,"You need 99 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a crown armor.")
	doPlayerAddItem(cid, 2487, 1)						--Crown Armor
	setPlayerStorageValue(cid,8073,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Black Knight Villa --
elseif item.uid == 8074 then
	if getPlayerStorageValue(cid,8074) == -1 or getPlayerStorageValue(cid,8074) == 0 then
		if getPlayerFreeCap(cid) <= 62 then
		doPlayerSendTextMessage(cid,22,"You need 62 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a crown shield.")
	doPlayerAddItem(cid, 2519, 1)						--Crown Shield
	setPlayerStorageValue(cid,8074,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Scale Armor --
elseif item.uid == 8075 then
	if getPlayerStorageValue(cid,8075) == -1 or getPlayerStorageValue(cid,8075) == 0 then
		if getPlayerFreeCap(cid) <= 105 then
		doPlayerSendTextMessage(cid,22,"You need 105 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a scale armor.")
	doPlayerAddItem(cid, 2483, 1)						--Scale armor
	setPlayerStorageValue(cid,8075,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Black Knight Villa key --
elseif item.uid == 8076 then
	if getPlayerStorageValue(cid,8076) == -1 or getPlayerStorageValue(cid,8076) == 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a silver key.")
	KEY = doPlayerAddItem(cid, 2088, 1)	--silver key Key (Black knight villa)
	doSetItemActionId(KEY, 2005)
	doSetItemSpecialDescription(KEY, "(Key: 5010)")
	setPlayerStorageValue(cid,8076,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Blood herb --
elseif item.uid == 8077 then
	if getPlayerStorageValue(cid,8077) == -1 or getPlayerStorageValue(cid,8077) == 0 then
		if getPlayerFreeCap(cid) <= 13 then
		doPlayerSendTextMessage(cid,22,"You need 13 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a blood herb.")
	doPlayerAddItem(cid, 2798, 1)						--Blood herb
	doPlayerAddItem(cid, 2324, 1)						--Broom	
	setPlayerStorageValue(cid,8077,1)		
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----


--	
else	
  return 0
end
return 1
end
