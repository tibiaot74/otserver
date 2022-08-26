--999--Storage is taken (used to free wand/rod in magic shop)

--8000 - 8999 is reserved storage ids for Main quests only--
--Aid 8001 reserved for sewer movement in mintwallin

--8086 - used to "A Prisoner" in Mintwallin
--8111 - Sams Old Backpack
--8112 - Dwarven Armor door storage
--8128 - Melchior greeting storage(278)
--8129 - Access to enter Green Djinn Fortress
--8130 - Baa'lead(286)
--8131 - Alesar(287)
--8132 - Backdoor access to Blue djinn
--8157 - Tempoarily Djinn access given by Melchior
--8158 - 0 = kill gobblins, 300 = access to buy soft boots
--8164 - Svargrond Arena - greenhorn
--8165 - Svargrond Arena - scrapper
--8166 - Svargrond Arena - warlord
--8168 - Access Djinn gates
--8169/8170 - Green/Blue djinn mission, you can only have one.
--8171 - Access to blue djinn backdoor
--8172 - Kill blue djinns task started
--8173 - completed the killing bluedjinns mission and moving on "lock".
--8175 - green djinn mission completed, access the tower from now.

--8176 - Access to green djinn backdoor
--8177 - Kill green djinns task started
--8178 - completed the killing bluedjinns mission and moving on "lock".
--8179 - blue djinn mission completed, access the tower from now.

--// Paradox Tower //--
--8191 - Oldrak talking
--8193 - Paradox Entrance (Pay skulls)
--8194 - Paradox Exit
--8195 - Riddler (talking)
--8196 -(Paradox)-Remove One reward passage[Money]
--8197 -(Paradox)-Remove One reward passage[yellow spell wand]
--8198 -(Paradox)-Remove One reward passage[Talons]
--8199 -(Paradox)-Remove One reward passage[Phoenix Egg]
--8204 - Storage says if you've made Paradox quest (for website)

--//HOTA//--
--8205 - Omruc's Tomb (Tile that teleport him out)
--8212 - Ashmunrah Tomb (Tile that teleport him out)
--8213 - Compiled the helmet of the ancient
function onUse(cid, item, frompos, item2, topos)
-- Key 4009 --
if item.uid == 8001 then
	if getPlayerStorageValue(cid,8001) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2011)
		doSetItemSpecialDescription(KEY, "(Key: 4009)")
		setPlayerStorageValue(cid,8001,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Tripple Uh --
elseif item.uid == 80002 then
	if getPlayerStorageValue(cid,80002) <= 0 then
		if getPlayerFreeCap(cid) <= 2 then
		doPlayerSendTextMessage(cid,22,"You need 2 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have ultimate healing rune!")
		doPlayerAddItem(cid, Cfultimatehealingrune, 3)
		setPlayerStorageValue(cid,80002,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 4503 --
elseif item.uid == 8003 then
	if getPlayerStorageValue(cid,8003) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a key!")
		KEY = doPlayerAddItem(cid, 2089, 1)
		doSetItemActionId(KEY, 2018)
		doSetItemSpecialDescription(KEY, "(Key: 4503)")
		setPlayerStorageValue(cid,8003,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 4501 --
elseif item.uid == 8004 then
	if getPlayerStorageValue(cid,8004) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a key!")
		KEY = doPlayerAddItem(cid, 2089, 1)
		doSetItemActionId(KEY, 2019)
		doSetItemSpecialDescription(KEY, "(Key: 4501)")
		setPlayerStorageValue(cid,8004,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Dark Helmet Quest --
elseif item.uid == 8005 then
	if getPlayerStorageValue(cid,8005) <= 0 then
		if getPlayerFreeCap(cid) <= 80 then
		doPlayerSendTextMessage(cid,22,"You need 80 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag!")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		KEY = doAddContainerItem(BAG, 2089, 1)
		doSetItemActionId(KEY, 2020)
		doSetItemSpecialDescription(KEY, "(Key: 4502)")
		doAddContainerItem(BAG, Cfdarkhelmet, 1)
		doAddContainerItem(BAG, Cfthrowingknife, 4)
		doAddContainerItem(BAG, Cfblankrune, 1)
		doAddContainerItem(BAG, 2148, 33)
		setPlayerStorageValue(cid,8005,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Senja Minotaur Quest --
elseif item.uid == 8006 then
	if getPlayerStorageValue(cid,8006) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found white pearls!")
		doPlayerAddItem(cid, Cfwhitepearl, 3)
		setPlayerStorageValue(cid,8006,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Senja Minotaur Quest --
elseif item.uid == 8007 then
	if getPlayerStorageValue(cid,8007) <= 0 then
		if getPlayerFreeCap(cid) <= 53 then
		doPlayerSendTextMessage(cid,22,"You need 53 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a broad sword!")
		doPlayerAddItem(cid, Cfbroadsword, 1)
		setPlayerStorageValue(cid,8007,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Barbarian Axe --
elseif item.uid == 8008 then
	if getPlayerStorageValue(cid,8008) <= 0 then
		if getPlayerFreeCap(cid) <= 51 then
		doPlayerSendTextMessage(cid,22,"You need 51 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a barbarian axe.")
		doPlayerAddItem(cid, Cfbarbarianaxe, 1)
		setPlayerStorageValue(cid,8008,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Scimitar --
elseif item.uid == 8009 then
	if getPlayerStorageValue(cid,8009) <= 0 then
		if getPlayerFreeCap(cid) <= 29 then
		doPlayerSendTextMessage(cid,22,"You need 29 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a scimitar.")
		doPlayerAddItem(cid, Cfscimitar, 1)
		setPlayerStorageValue(cid,8009,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Battle axe --
elseif item.uid == 8010 then
	if getPlayerStorageValue(cid,8010) <= 0 then
		if getPlayerFreeCap(cid) <= 50 then
		doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a battle axe.")
		doPlayerAddItem(cid, Cfbattleaxe, 1)
		setPlayerStorageValue(cid,8010,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Behemoth Quest --
elseif item.uid == 8011 then
	if getPlayerStorageValue(cid,8011) <= 0 then
		if getPlayerFreeCap(cid) <= 26 then
		doPlayerSendTextMessage(cid,22,"You need 26 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a demon shield.")
		doPlayerAddItem(cid, Cfdemonshield, 1)
		setPlayerStorageValue(cid,8011,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8012 then
	if getPlayerStorageValue(cid,8012) <= 0 then
		if getPlayerFreeCap(cid) <= 80 then
		doPlayerSendTextMessage(cid,22,"You need 80 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a golden armor.")
		doPlayerAddItem(cid, Cfgoldenarmor, 1)
		setPlayerStorageValue(cid,8012,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8013 then
	if getPlayerStorageValue(cid,8013) <= 0 then
		if getPlayerFreeCap(cid) <= 110 then
		doPlayerSendTextMessage(cid,22,"You need 110 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a guardian halberd.")
		doPlayerAddItem(cid, Cfguardianhalberd, 1)
		setPlayerStorageValue(cid,8013,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8014 then
	if getPlayerStorageValue(cid,8014) <= 0 then
		if getPlayerFreeCap(cid) <= 17 then
		doPlayerSendTextMessage(cid,22,"You need 17 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cflifering, 1)
		doAddContainerItem(BAG, Cfplatinumamulet, 1)
		doAddContainerItem(BAG, Cfsmalldiamond, 3)
		doAddContainerItem(BAG, Cfcrystalring, 1)
		doAddContainerItem(BAG, Cfsmallsapphire, 4)
		setPlayerStorageValue(cid,8014,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Berserker Treasure --
elseif item.uid == 8015 then
	if getPlayerStorageValue(cid,8015) <= 0 then
		if getPlayerFreeCap(cid) <= 27 then
		doPlayerSendTextMessage(cid,22,"You need 27 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, 2148, 100)
		doAddContainerItem(BAG, 2148, 75)
		doAddContainerItem(BAG, Cfwhitepearl, 3)
		setPlayerStorageValue(cid,8015,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Black Knight Villa --
elseif item.uid == 8016 then
	if getPlayerStorageValue(cid,8016) <= 0 then
		if getPlayerFreeCap(cid) <= 62 then
		doPlayerSendTextMessage(cid,22,"You need 62 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a crown shield.")
		doPlayerAddItem(cid, Cfcrownshield, 1)
		setPlayerStorageValue(cid,8016,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8017 then
	if getPlayerStorageValue(cid,8017) <= 0 then
		if getPlayerFreeCap(cid) <= 99 then
		doPlayerSendTextMessage(cid,22,"You need 99 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a crown armor.")
		doPlayerAddItem(cid, Cfcrownarmor, 1)
		setPlayerStorageValue(cid,8017,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Blood Herb --
elseif item.uid == 8018 then
	if getPlayerStorageValue(cid,8018) <= 0 then
		if getPlayerFreeCap(cid) <= 2 then
		doPlayerSendTextMessage(cid,22,"You need 2 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a blood herb.")
		doPlayerAddItem(cid, Cfbloodherb, 1)
		setPlayerStorageValue(cid,8018,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Mummy Quest --
elseif item.uid == 8019 then
	if getPlayerStorageValue(cid,8019) <= 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfsilverbrooch, 1)
		doAddContainerItem(BAG, Cfsmallruby, 2)
		doAddContainerItem(BAG, Cfsmalldiamond, 3)
		setPlayerStorageValue(cid,8019,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Dwarven Axe --
elseif item.uid == 8020 then
	if getPlayerStorageValue(cid,8020) <= 0 then
		if getPlayerFreeCap(cid) <= 82 then
		doPlayerSendTextMessage(cid,22,"You need 82 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a dwarven axe.")
		doPlayerAddItem(cid, Cfdwarvenaxe, 1)
		setPlayerStorageValue(cid,8020,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8021 then
	if getPlayerStorageValue(cid,8021) <= 0 then
		if getPlayerFreeCap(cid) <= 85 then
		doPlayerSendTextMessage(cid,22,"You need 85 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a war hammer.")
		doPlayerAddItem(cid, Cfwarhammer, 1)
		setPlayerStorageValue(cid,8021,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Crusader Helmet --
elseif item.uid == 8022 then
	if getPlayerStorageValue(cid,8022) <= 0 then
		if getPlayerFreeCap(cid) <= 52 then
		doPlayerSendTextMessage(cid,22,"You need 52 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a crusader helmet.")
		doPlayerAddItem(cid, Cfcrusaderhelmet, 1)
		setPlayerStorageValue(cid,8022,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Crystal wand --
elseif item.uid == 8023 then
	if getPlayerStorageValue(cid,8023) <= 0 then
		if getPlayerFreeCap(cid) <= 28 then
		doPlayerSendTextMessage(cid,22,"You need 28 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a crystal wand.")
		doPlayerAddItem(cid, Cfcrystalwand, 1)
		setPlayerStorageValue(cid,8023,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8024 then
	if getPlayerStorageValue(cid,8024) <= 0 then
		if getPlayerFreeCap(cid) <= 2 then
		doPlayerSendTextMessage(cid,22,"You need 2 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a sudden death rune.")
		doPlayerAddItem(cid, Cfsuddendeathrune, 3)
		setPlayerStorageValue(cid,8024,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Dark Armor --
elseif item.uid == 8025 then
	if getPlayerStorageValue(cid,8025) <= 0 then
		if getPlayerFreeCap(cid) <= 120 then
		doPlayerSendTextMessage(cid,22,"You need 120 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a dark armor.")
		doPlayerAddItem(cid, Cfdarkarmor, 1)
		setPlayerStorageValue(cid,8025,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Dead Archer --
elseif item.uid == 8026 then
	if getPlayerStorageValue(cid,8026) <= 0 then
		if getPlayerFreeCap(cid) <= 47 then
		doPlayerSendTextMessage(cid,22,"You need 47 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, 2006, 10)
		doAddContainerItem(BAG, 2006, 7)
		doAddContainerItem(BAG, Cfpoisonarrow, 5)
		doAddContainerItem(BAG, Cfbow, 1)
		setPlayerStorageValue(cid,8026,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3980 --
elseif item.uid == 8027 then
	if getPlayerStorageValue(cid,8027) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a key!")
		KEY = doPlayerAddItem(cid, 2091, 1)
		doSetItemActionId(KEY, 2003)
		doSetItemSpecialDescription(KEY, "(Key: 3980)")
		setPlayerStorageValue(cid,8027,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Deeper Fibula --
elseif item.uid == 8028 then
	if getPlayerStorageValue(cid,8028) <= 0 then
		if getPlayerFreeCap(cid) <= 82 then
		doPlayerSendTextMessage(cid,22,"You need 82 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a tower shield.")
		doPlayerAddItem(cid, Cftowershield, 1)
		setPlayerStorageValue(cid,8028,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8029 then
	if getPlayerStorageValue(cid,8029) <= 0 then
		if getPlayerFreeCap(cid) <= 68 then
		doPlayerSendTextMessage(cid,22,"You need 68 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a warrior helmet.")
		doPlayerAddItem(cid, Cfwarriorhelmet, 1)
		setPlayerStorageValue(cid,8029,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8030 then
	if getPlayerStorageValue(cid,8030) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a dwarven ring.")
		doPlayerAddItem(cid, Cfdwarvenring, 1)
		setPlayerStorageValue(cid,8030,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8031 then
	if getPlayerStorageValue(cid,8031) <= 0 then
		if getPlayerFreeCap(cid) <= 3 then
		doPlayerSendTextMessage(cid,22,"You need 3 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found an elven amulet.")
		doPlayerAddItem(cid, Cfelvenamulet, 50)
		setPlayerStorageValue(cid,8031,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8032 then
	if getPlayerStorageValue(cid,8032) <= 0 then
		if getPlayerFreeCap(cid) <= 59 then
		doPlayerSendTextMessage(cid,22,"You need 59 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a knight axe.")
		doPlayerAddItem(cid, Cfknightaxe, 1)
		setPlayerStorageValue(cid,8032,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Black Knight Villa key --
elseif item.uid == 8033 then
	if getPlayerStorageValue(cid,8033) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a silver key.")
	KEY = doPlayerAddItem(cid, 2088, 1)	--silver key Key (Black knight villa)
	doSetItemActionId(KEY, 2005)
	doSetItemSpecialDescription(KEY, "(Key: 5010)")
	setPlayerStorageValue(cid,8033,1)	
			
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Panpipe Quest-Key (Jakunarf Desert) --
elseif item.uid == 8034 then
	if getPlayerStorageValue(cid,8034) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
	doPlayerSendTextMessage(cid,22,"You have found a silver key.")
	KEY = doPlayerAddItem(cid, 2088, 1)	--Silver (Panpipe quest, Jakunarf Desert)
	doSetItemSpecialDescription(KEY, "(Key: 4055)")
	doSetItemActionId(KEY, 2002)
	setPlayerStorageValue(cid,8034,1)
			
	else
	doPlayerSendTextMessage(cid,22,"it\'s empty.")
	end
-----
-----
-- Demon Helmet --
elseif item.uid == 8035 then
	if getPlayerStorageValue(cid,8035) <= 0 then
		if getPlayerFreeCap(cid) <= 30 then
		doPlayerSendTextMessage(cid,22,"You need 30 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have a demon helmet.")
		doPlayerAddItem(cid, Cfdemonhelmet, 1)
		setPlayerStorageValue(cid,8035,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8036 then
	if getPlayerStorageValue(cid,8036) <= 0 then
		if getPlayerFreeCap(cid) <= 26 then
		doPlayerSendTextMessage(cid,22,"You need 26 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have a demon shield.")
		doPlayerAddItem(cid, Cfdemonshield, 1)
		setPlayerStorageValue(cid,8036,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8037 then
	if getPlayerStorageValue(cid,8037) <= 0 then
		if getPlayerFreeCap(cid) <= 29 then
		doPlayerSendTextMessage(cid,22,"You need 29 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have a pair of steel boots.")
		doPlayerAddItem(cid, Cfsteelboots, 1)
		setPlayerStorageValue(cid,8037,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3610 --
elseif item.uid == 8038 then
	if getPlayerStorageValue(cid,8038) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2021)
		doSetItemSpecialDescription(KEY, "(Key: 3610)")
		setPlayerStorageValue(cid,8038,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Devil Helmet --
elseif item.uid == 8039 then
	if getPlayerStorageValue(cid,8039) <= 0 then
		if getPlayerFreeCap(cid) <= 50 then
		doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a devil helmet.")
		doPlayerAddItem(cid, Cfdevilhelmet, 1)
		setPlayerStorageValue(cid,8039,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8040 then
	if getPlayerStorageValue(cid,8040) <= 0 then
		if getPlayerFreeCap(cid) <= 90 then
		doPlayerSendTextMessage(cid,22,"You need 90 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a halberd.")
		doPlayerAddItem(cid, Cfhalberd, 1)
		setPlayerStorageValue(cid,8040,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8041 then
	if getPlayerStorageValue(cid,8041) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found some small sapphire.")
		doPlayerAddItem(cid, Cfsmallsapphire, 4)
		setPlayerStorageValue(cid,8041,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Double Hero --
elseif item.uid == 8042 then
	if getPlayerStorageValue(cid,8042) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfclubring, 1)
		doPlayerSendTextMessage(cid,22,"You have found a club ring.")
		setPlayerStorageValue(cid,8042,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8043 then
	if getPlayerStorageValue(cid,8043) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found some red gem.")
		doPlayerAddItem(cid, Cfredgem, 1)
		setPlayerStorageValue(cid,8043,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3001 --
elseif item.uid == 8044 then
	if getPlayerStorageValue(cid,8044) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2022)
		doSetItemSpecialDescription(KEY, "(Key: 3001)")
		setPlayerStorageValue(cid,8044,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3002 --
elseif item.uid == 8045 then
	if getPlayerStorageValue(cid,8045) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2023)
		doSetItemSpecialDescription(KEY, "(Key: 3002)")
		setPlayerStorageValue(cid,8045,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3003 --
elseif item.uid == 8046 then
	if getPlayerStorageValue(cid,8046) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2024)
		doSetItemSpecialDescription(KEY, "(Key: 3003)")
		setPlayerStorageValue(cid,8046,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3004 --
elseif item.uid == 8047 then
	if getPlayerStorageValue(cid,8047) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2025)
		doSetItemSpecialDescription(KEY, "(Key: 3004)")
		setPlayerStorageValue(cid,8047,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3005 --
elseif item.uid == 8048 then
	if getPlayerStorageValue(cid,8048) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2026)
		doSetItemSpecialDescription(KEY, "(Key: 3005)")
		setPlayerStorageValue(cid,8048,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3006 --
elseif item.uid == 8049 then
	if getPlayerStorageValue(cid,8049) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2027)
		doSetItemSpecialDescription(KEY, "(Key: 3006)")
		setPlayerStorageValue(cid,8049,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3007 --
elseif item.uid == 8050 then
	if getPlayerStorageValue(cid,8050) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2028)
		doSetItemSpecialDescription(KEY, "(Key: 3007)")
		setPlayerStorageValue(cid,8050,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Draconia Quest --
elseif item.uid == 8051 then
	if getPlayerStorageValue(cid,8051) <= 0 then
		if getPlayerFreeCap(cid) <= 73 then
		doPlayerSendTextMessage(cid,22,"You need 73 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag!")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfenergyring, 1)
		doAddContainerItem(BAG, Cfstoneskinamulet, 5)
		doAddContainerItem(BAG, Cfserpentsword, 1)
		doAddContainerItem(BAG, Cficerapier, 1)
		setPlayerStorageValue(cid,8051,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3008 --
elseif item.uid == 8052 then
	if getPlayerStorageValue(cid,8052) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(KEY, 2029)
		doSetItemSpecialDescription(KEY, "(Key: 3008)")
		setPlayerStorageValue(cid,8052,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Dragon tower --
elseif item.uid == 8053 then
	if getPlayerStorageValue(cid,8053) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found some small sapphires.")
		doPlayerAddItem(cid, Cfsmallsapphire, 2)
		setPlayerStorageValue(cid,8053,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8054 then
	if getPlayerStorageValue(cid,8054) <= 0 then
		if getPlayerFreeCap(cid) <= 114 then
		doPlayerSendTextMessage(cid,22,"You need 114 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfburstarrow, 30)
		doAddContainerItem(BAG, Cfpoisonarrow, 60)
		doAddContainerItem(BAG, Cfbow, 1)
		setPlayerStorageValue(cid,8054,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Goblin Quest --
elseif item.uid == 8055 then
	if getPlayerStorageValue(cid,8055) <= 0 then
		if getPlayerFreeCap(cid) <= 69 then
		doPlayerSendTextMessage(cid,22,"You need 69 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a steel shield.")
		doPlayerAddItem(cid, Cfsteelshield, 1)
		setPlayerStorageValue(cid,8055,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8056 then
	if getPlayerStorageValue(cid,8056) <= 0 then
		if getPlayerFreeCap(cid) <= 5 then
		doPlayerSendTextMessage(cid,22,"You need 5 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver amulet.")
		doPlayerAddItem(cid, Cfsilveramulet, 200)
		setPlayerStorageValue(cid,8056,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Elephant tusk quest --
elseif item.uid == 8057 then
	if getPlayerStorageValue(cid,8057) <= 0 then
		if getPlayerFreeCap(cid) <= 30 then
		doPlayerSendTextMessage(cid,22,"You need 30 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found two elephant tusks.")
		doPlayerAddItem(cid, Cfelephanttusks, 2)
		setPlayerStorageValue(cid,8057,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Elvenbane --
elseif item.uid == 8058 then
	if getPlayerStorageValue(cid,8058) <= 0 then
		if getPlayerFreeCap(cid) <= 54 then
		doPlayerSendTextMessage(cid,22,"You need 54 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a morning star.")
		doPlayerAddItem(cid, Cfmorningstar, 1)
		setPlayerStorageValue(cid,8058,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8059 then
	if getPlayerStorageValue(cid,8059) <= 0 then
		if getPlayerFreeCap(cid) <= 55 then
		doPlayerSendTextMessage(cid,22,"You need 55 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a dwarven shield.")
		doPlayerAddItem(cid, Cfdwarvenshield, 1)
		setPlayerStorageValue(cid,8059,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8060 then
	if getPlayerStorageValue(cid,8060) <= 0 then
		if getPlayerFreeCap(cid) <= 2 then
		doPlayerSendTextMessage(cid,22,"You need 2 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a mana fluid.")
		doPlayerAddItem(cid, 2006, 7)
		setPlayerStorageValue(cid,8060,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8061 then
	if getPlayerStorageValue(cid,8061) <= 0 then
		if getPlayerFreeCap(cid) <= 78 then
		doPlayerSendTextMessage(cid,22,"You need 78 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, 2148, 100)
		doAddContainerItem(BAG, Cfsmalldiamond, 2)
		doAddContainerItem(BAG, Cfspellbook, 1)
		doAddContainerItem(BAG, Cfblankrune, 1)
		setPlayerStorageValue(cid,8061,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3800 --
elseif item.uid == 8062 then
	if getPlayerStorageValue(cid,8062) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a copper key!")
		KEY = doPlayerAddItem(cid, 2089, 1)
		doSetItemActionId(KEY, 2030)
		doSetItemSpecialDescription(KEY, "(Key: 3800)")
		setPlayerStorageValue(cid,8062,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Emperor's Cookies Quest --
elseif item.uid == 8063 then
	if getPlayerStorageValue(cid,8063) <= 0 then
		if getPlayerFreeCap(cid) <= 12 then
		doPlayerSendTextMessage(cid,22,"You need 12 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfcookie, 20)
		doAddContainerItem(BAG, Cfcookie, 7)
		KEY = doAddContainerItem(BAG, 2089, 1)
		doSetItemActionId(KEY, 2031)
		doSetItemSpecialDescription(KEY, "(Key: 3801)")
		setPlayerStorageValue(cid,8063,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3802 --
elseif item.uid == 8064 then
	if getPlayerStorageValue(cid,8064) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a copper key!")
		KEY = doPlayerAddItem(cid, 2089, 1)
		doSetItemActionId(KEY, 2032)
		doSetItemSpecialDescription(KEY, "(Key: 3802)")
		setPlayerStorageValue(cid,8064,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Explorer Brooch --
elseif item.uid == 8065 then
	if getPlayerStorageValue(cid,8065) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found an explorer brooch")
		doPlayerAddItem(cid, Cfexplorerbrooch, 1)
		setPlayerStorageValue(cid,8065,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3520 --
elseif item.uid == 8066 then
	if getPlayerStorageValue(cid,8066) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bone key!")
		KEY = doPlayerAddItem(cid, Cfbonekey, 1)
		doSetItemActionId(KEY, 2033)
		doSetItemSpecialDescription(KEY, "(Key: 3520)")
		setPlayerStorageValue(cid,8066,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Fanfare --
elseif item.uid == 8067 then
	if getPlayerStorageValue(cid,8067) <= 0 then
		if getPlayerFreeCap(cid) <= 23 then
		doPlayerSendTextMessage(cid,22,"You need 23 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a fanfare.")
		doPlayerAddItem(cid, Cffanfare, 1)
		setPlayerStorageValue(cid,8067,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Fire Axe --
elseif item.uid == 8068 then
	if getPlayerStorageValue(cid,8068) <= 0 then
		if getPlayerFreeCap(cid) <= 16 then
		doPlayerSendTextMessage(cid,22,"You need 16 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfsmalldiamond, 7)
		doAddContainerItem(BAG, Cfdragonnecklace, 200)
		doAddContainerItem(BAG, RCfringofhealing, 1)
		setPlayerStorageValue(cid,8068,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8069 then
	if getPlayerStorageValue(cid,8069) <= 0 then
		if getPlayerFreeCap(cid) <= 40 then
		doPlayerSendTextMessage(cid,22,"You need 40 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a fire axe.")
		doPlayerAddItem(cid, Cffireaxe, 1)
		setPlayerStorageValue(cid,8069,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Geomancer quest --
elseif item.uid == 8070 then
	if getPlayerStorageValue(cid,8070) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a small sapphire.")
		doPlayerAddItem(cid, Cfsmallsapphire, 1)
		setPlayerStorageValue(cid,8070,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8071 then
	if getPlayerStorageValue(cid,8071) <= 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfsmalldiamond, 1)
		doAddContainerItem(BAG, Cfdwarvenring, 1)
		setPlayerStorageValue(cid,8071,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Ghoul Room --
elseif item.uid == 8072 then
	if getPlayerStorageValue(cid,8072) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a club ring.")
		doPlayerAddItem(cid, Cfclubring, 1)
		setPlayerStorageValue(cid,8072,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8073 then
	if getPlayerStorageValue(cid,8073) <= 0 then
		if getPlayerFreeCap(cid) <= 4 then
		doPlayerSendTextMessage(cid,22,"You need 4 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a garlic necklac.")
		doPlayerAddItem(cid, Cfgarlicnecklace, 150)
		setPlayerStorageValue(cid,8073,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Giant Smithhammer --
elseif item.uid == 8074 then
	if getPlayerStorageValue(cid,8074) <= 0 then
		if getPlayerFreeCap(cid) <= 68 then
		doPlayerSendTextMessage(cid,22,"You need 68 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a giant smithhammer.")
		doPlayerAddItem(cid, Cfgiantsmithhammer, 1)
		setPlayerStorageValue(cid,8074,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8075 then
	if getPlayerStorageValue(cid,8075) <= 0 then
		if getPlayerFreeCap(cid) <= 19 then
		doPlayerSendTextMessage(cid,22,"You need 19 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, 2148, 100)
		doAddContainerItem(BAG, Cftalon, 1)
		setPlayerStorageValue(cid,8075,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Griffin Shield --
elseif item.uid == 8076 then
	if getPlayerStorageValue(cid,8076) <= 0 then
		if getPlayerFreeCap(cid) <= 50 then
		doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a griffin shield.")
		doPlayerAddItem(cid, Cfgriffinshield, 1)
		setPlayerStorageValue(cid,8076,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8077 then
	if getPlayerStorageValue(cid,8077) <= 0 then
		if getPlayerFreeCap(cid) <= 82 then
		doPlayerSendTextMessage(cid,22,"You need 82 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a dwarven axe.")
		doPlayerAddItem(cid, Cfdwarvenaxe, 1)
		setPlayerStorageValue(cid,8077,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8078 then
	if getPlayerStorageValue(cid,8078) <= 0 then
		if getPlayerFreeCap(cid) <= 80 then
		doPlayerSendTextMessage(cid,22,"You need 80 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a obsidian lance.")
		doPlayerAddItem(cid, Cfobsidianlance, 1)
		setPlayerStorageValue(cid,8078,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Hydra Egg --
elseif item.uid == 8079 then
	if getPlayerStorageValue(cid,8079) <= 0 then
		if getPlayerFreeCap(cid) <= 5 then
		doPlayerSendTextMessage(cid,22,"You need 5 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a hydra egg.")
		doPlayerAddItem(cid, Cfhydraegg, 1)
		setPlayerStorageValue(cid,8079,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Iron Hammer Quest --
elseif item.uid == 8080 then
	if getPlayerStorageValue(cid,8080) <= 0 then
		if getPlayerFreeCap(cid) <= 66 then
		doPlayerSendTextMessage(cid,22,"You need 66 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found an iron hammer.")
		doPlayerAddItem(cid, Cfironhammer, 1)
		setPlayerStorageValue(cid,8080,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Iron Helmet Quest --
elseif item.uid == 8081 then
	if getPlayerStorageValue(cid,8081) <= 0 then
		if getPlayerFreeCap(cid) <= 146 then
		doPlayerSendTextMessage(cid,22,"You need 146 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a backpack.")
		BAG = doPlayerAddItem(cid, Cfbackpack, 1)
		doAddContainerItem(BAG, Cflongsword, 1)
		doAddContainerItem(BAG, Cfwornleatherboots, 1)
		doAddContainerItem(BAG, Cfletter, 1)
		doAddContainerItem(BAG, Cfleatherarmor, 1)
		doAddContainerItem(BAG, Cfsuddendeathrune, 3)
		doAddContainerItem(BAG, Cfironhelmet, 1)
		setPlayerStorageValue(cid,8081,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Isle of Mist --
elseif item.uid == 8082 then
	if getPlayerStorageValue(cid,8082) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found some small emeralds.")
		doPlayerAddItem(cid, Cfsmallemerald, 2)
		setPlayerStorageValue(cid,8082,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Life ring quest --
elseif item.uid == 8083 then
	if getPlayerStorageValue(cid,8083) <= 0 then
		if getPlayerFreeCap(cid) <= 16 then
		doPlayerSendTextMessage(cid,22,"You need 16 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 2)
		doAddContainerItem(BAG, Cfdragonnecklace, 200)
		doAddContainerItem(BAG, Cflifering, 1)
		setPlayerStorageValue(cid,8083,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Longsword quest --
elseif item.uid == 8084 then
	if getPlayerStorageValue(cid,8084) <= 0 then
		if getPlayerFreeCap(cid) <= 80 then
		doPlayerSendTextMessage(cid,22,"You need 80 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 2)
		doAddContainerItem(BAG, 2148, 76)
		doAddContainerItem(BAG, Cfweddingring, 1)
		doAddContainerItem(BAG, Cfwoodendoll, 1)
		doAddContainerItem(BAG, Cfblankrune, 1)
		doAddContainerItem(BAG, Cfblankrune, 1)
		doAddContainerItem(BAG, Cfblankrune, 1)
		doAddContainerItem(BAG, Cfmirror, 1)
		doAddContainerItem(BAG, Cflongsword, 1)
		setPlayerStorageValue(cid,8084,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3620 --
elseif item.uid == 8085 then
	if getPlayerStorageValue(cid,8085) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, Cfsilverkey, 1)
		doSetItemActionId(KEY, 2035)
		doSetItemSpecialDescription(KEY, "(Key: 3620)")
		setPlayerStorageValue(cid,8085,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Mad mage room --
elseif item.uid == 8087 then
	if getPlayerStorageValue(cid,8087) <= 0 then
		if getPlayerFreeCap(cid) <= 31 then
		doPlayerSendTextMessage(cid,22,"You need 31 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfstaramulet, 1)
		doAddContainerItem(BAG, Cfstoneskinamulet, 5)
		doAddContainerItem(BAG, Cfhatofthemad, 1)
		setPlayerStorageValue(cid,8087,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Medusa Shield --
elseif item.uid == 8088 then
	if getPlayerStorageValue(cid,8088) <= 0 then
		if getPlayerFreeCap(cid) <= 105 then
		doPlayerSendTextMessage(cid,22,"You need 105 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfbluerobe, 1)
		doAddContainerItem(BAG, Cfskullstaff, 1)
		doAddContainerItem(BAG, Cfmedusashield, 1)
		setPlayerStorageValue(cid,8088,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3667 --
elseif item.uid == 8089 then
	if getPlayerStorageValue(cid,8089) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, Cfsilverkey, 1)
		doSetItemActionId(KEY, 2037)
		doSetItemSpecialDescription(KEY, "(Key: 3667)")
		setPlayerStorageValue(cid,8089,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Cyclop Room --
elseif item.uid == 8090 then
	if getPlayerStorageValue(cid,8090) <= 0 then
		if getPlayerFreeCap(cid) <= 189 then
		doPlayerSendTextMessage(cid,22,"You need 189 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfsmalldiamond, 1)
		doAddContainerItem(BAG, 2006, 7)
		doAddContainerItem(BAG, 2006, 7)
		doAddContainerItem(BAG, Cfhatchet, 1)
		doAddContainerItem(BAG, Cfchainhelmet, 1)
		doAddContainerItem(BAG, Cfchainarmor, 1)
		setPlayerStorageValue(cid,8090,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Naginata --
elseif item.uid == 8091 then
	if getPlayerStorageValue(cid,8091) <= 0 then
		if getPlayerFreeCap(cid) <= 80 then
		doPlayerSendTextMessage(cid,22,"You need 80 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a naginata.")
		doPlayerAddItem(cid, Cfnaginata, 1)
		setPlayerStorageValue(cid,8091,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Noble Armor --
elseif item.uid == 8092 then
	if getPlayerStorageValue(cid,8092) <= 0 then
		if getPlayerFreeCap(cid) <= 120 then
		doPlayerSendTextMessage(cid,22,"You need 120 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a noble armor.")
		doPlayerAddItem(cid, Cfnoblearmor, 1)
		setPlayerStorageValue(cid,8092,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8093 then
	if getPlayerStorageValue(cid,8093) <= 0 then
		if getPlayerFreeCap(cid) <= 30 then
		doPlayerSendTextMessage(cid,22,"You need 30 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a crown helmet.")
		doPlayerAddItem(cid, Cfcrownhelmet, 1)
		setPlayerStorageValue(cid,8093,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Orc Fortress --
elseif item.uid == 8094 then
	if getPlayerStorageValue(cid,8094) <= 0 then
		if getPlayerFreeCap(cid) <= 120 then
		doPlayerSendTextMessage(cid,22,"You need 120 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a knight armor.")
		doPlayerAddItem(cid, Cfknightarmor, 1)
		setPlayerStorageValue(cid,8094,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8095 then
	if getPlayerStorageValue(cid,8095) <= 0 then
		if getPlayerFreeCap(cid) <= 59 then
		doPlayerSendTextMessage(cid,22,"You need 59 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a knight axe.")
		doPlayerAddItem(cid, Cfknightaxe, 1)
		setPlayerStorageValue(cid,8095,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8096 then
	if getPlayerStorageValue(cid,8096) <= 0 then
		if getPlayerFreeCap(cid) <= 23 then
		doPlayerSendTextMessage(cid,22,"You need 23 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a fire sword.")
		doPlayerAddItem(cid, Cffiresword, 1)
		setPlayerStorageValue(cid,8096,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Orc Shaman --
elseif item.uid == 8097 then
	if getPlayerStorageValue(cid,8097) <= 0 then
		if getPlayerFreeCap(cid) <= 26 then
		doPlayerSendTextMessage(cid,22,"You need 26 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfmagiclightwand, 1)
		doAddContainerItem(BAG, Cfaxering, 1)
		doAddContainerItem(BAG, Cfblankrune, 1)
		setPlayerStorageValue(cid,8097,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Ornamented Shield --
elseif item.uid == 8098 then
	if getPlayerStorageValue(cid,8098) <= 0 then
		if getPlayerFreeCap(cid) <= 151 then
		doPlayerSendTextMessage(cid,22,"You need 151 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a spike sword, ornamented shield and a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		KEY = doAddContainerItem(BAG, Cfsilverkey, 1)
		doAddContainerItem(BAG, Cfdragonnecklace, 200)
		doAddContainerItem(BAG, Cfmightring, 20)
		BOOK = doAddContainerItem(BAG, Cfblackbook, 1)
		doAddContainerItem(BAG, Cftimering, 1)
		doAddContainerItem(BAG, Cfgarlicnecklace, 150)
		doAddContainerItem(BAG, Cfplatinumcoin, 5)
		doAddContainerItem(BAG, Cfinkwell, 1)
		doPlayerAddItem(cid, Cfornamentedshield, 1)
		doPlayerAddItem(cid, Cfspikesword, 1)
		setPlayerStorageValue(cid,8098,1)
		
		doSetItemText(BOOK, "This is the Journal of Krendorak,the last of the Nightmare Knights:\nI tried to discover the secret of my ancestors, but I failed.\nThe damned dragons tricked me!\nI escaped but I know I'm mortaly wounded.\nEven if I could get out off here, I will never make it to Knightwatch Tower to\nuse its secret to resupply.\nSince now that Camdrek is dead I will never be able to open it...\nIt is so hot, my sight is fading...\nMay the gods forgive my failing...")
		doSetItemSpecialDescription(BOOK, "The Journal of Krendorak")
		doSetItemActionId(KEY, 2001)
		doSetItemSpecialDescription(KEY, "(Key: 3702)")
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Panpipe --
elseif item.uid == 8099 then
	if getPlayerStorageValue(cid,8099) <= 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfpowerring, 1)
		doAddContainerItem(BAG, Cfsmallamethyst, 2)
		doAddContainerItem(BAG, Cfpanpipes, 1)
		setPlayerStorageValue(cid,8099,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 6010 - Demon key --
elseif item.uid == 8100 then
	if getPlayerStorageValue(cid,8100) <= 0 then
	PARCHMENTPOS = {x=33063, y=31624, z=15, stackpos=3}
	GETPARCHMENT = getThingfromPos(PARCHMENTPOS)
	if GETPARCHMENT.itemid == 1953 then
	else
		if getPlayerFreeCap(cid) <= 44 then
		doPlayerSendTextMessage(cid,22,"You need 44 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		KEY = doAddContainerItem(BAG, Cfgoldenkey, 1)
		doSetItemActionId(KEY, 2038)
		doSetItemSpecialDescription(KEY, "(Key: 6010)")
		doAddContainerItem(BAG, Cfparchment, 1)
		doAddContainerItem(BAG, Cfskull, 1)
		doAddContainerItem(BAG, Cfbone, 1)
		doAddContainerItem(BAG, Cftalon, 2)
		doAddContainerItem(BAG, Cfstealthring, 1)
		setPlayerStorageValue(cid,8100,1)
	end
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Plate armor --
elseif item.uid == 8101 then
	if getPlayerStorageValue(cid,8101) <= 0 then
		if getPlayerFreeCap(cid) <= 120 then
		doPlayerSendTextMessage(cid,22,"You need 120 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a plate armor.")
		doPlayerAddItem(cid, Cfplatearmor, 1)
		setPlayerStorageValue(cid,8101,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Poison dagger --
elseif item.uid == 8102 then
	if getPlayerStorageValue(cid,8102) <= 0 then
		if getPlayerFreeCap(cid) <= 41 then
		doPlayerSendTextMessage(cid,22,"You need 41 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfpoisonarrow, 30)
		doAddContainerItem(BAG, Cfpoisondagger, 1)
		setPlayerStorageValue(cid,8102,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Power bolt --
elseif item.uid == 8103 then
	if getPlayerStorageValue(cid,8103) <= 0 then
		if getPlayerFreeCap(cid) <= 106 then
		doPlayerSendTextMessage(cid,22,"You need 106 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfpowerbolt, 5)
		doAddContainerItem(BAG, Cfburstarrow, 12)
		doAddContainerItem(BAG, Cftwohandedsword, 1)
		doAddContainerItem(BAG, Cfbrownbook, 1)
		setPlayerStorageValue(cid,8103,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Power ring --
elseif item.uid == 8104 then
	if getPlayerStorageValue(cid,8104) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfpowerring, 1)
		doPlayerSendTextMessage(cid,22,"You have found a power ring.")
		setPlayerStorageValue(cid,8104,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8105 then
	if getPlayerStorageValue(cid,8105) <= 0 then
		if getPlayerFreeCap(cid) <= 5 then
		doPlayerSendTextMessage(cid,22,"You need 5 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bronze amulet.")
		doPlayerAddItem(cid, Cfbronzeamulet, 200)
		setPlayerStorageValue(cid,8105,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Purple Tome --
elseif item.uid == 8106 then
	if getPlayerStorageValue(cid,8106) <= 0 then
		if getPlayerFreeCap(cid) <= 19 then
		doPlayerSendTextMessage(cid,22,"You need 19 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a purple tome.")
		doPlayerAddItem(cid, Cfpurpletome, 1)
		setPlayerStorageValue(cid,8106,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8107 then
	if getPlayerStorageValue(cid,8107) <= 0 then
		if getPlayerFreeCap(cid) <= 9 then
		doPlayerSendTextMessage(cid,22,"You need 9 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a map.")
		doPlayerAddItem(cid, 1956, 1)
		setPlayerStorageValue(cid,8107,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8108 then
	if getPlayerStorageValue(cid,8108) <= 0 then
		if getPlayerFreeCap(cid) <= 9 then
		doPlayerSendTextMessage(cid,22,"You need 9 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a map.")
		doPlayerAddItem(cid, 1957, 1)
		setPlayerStorageValue(cid,8108,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Ring Quest --
elseif item.uid == 8109 then
	if getPlayerStorageValue(cid,8109) <= 0 then
		if getPlayerFreeCap(cid) <= 9 then
		doPlayerSendTextMessage(cid,22,"You need 9 cap or more to loot this!")
		return TRUE
		end
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cftimering, 1)
		doPlayerSendTextMessage(cid,22,"You have found a time ring.")
		setPlayerStorageValue(cid,8109,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8110 then
	if getPlayerStorageValue(cid,8110) <= 0 then
		if getPlayerFreeCap(cid) <= 9 then
		doPlayerSendTextMessage(cid,22,"You need 9 cap or more to loot this!")
		return TRUE
		end
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfswordring, 1)
		doPlayerSendTextMessage(cid,22,"You have found a sword ring.")
		setPlayerStorageValue(cid,8110,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Sam's Old backpack -Dwarven Armor --
elseif item.uid == 8113 then
	if getPlayerStorageValue(cid,8113) <= 0 then
		if getPlayerFreeCap(cid) <= 130 then
		doPlayerSendTextMessage(cid,22,"You need 130 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a dwarven armor.")
		doPlayerAddItem(cid, Cfdwarvenarmor, 1)
		setPlayerStorageValue(cid,8113,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Scale armor --
elseif item.uid == 8114 then
	if getPlayerStorageValue(cid,8114) <= 0 then
		if getPlayerFreeCap(cid) <= 105 then
		doPlayerSendTextMessage(cid,22,"You need 105 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a scale armor.")
		doPlayerAddItem(cid, Cfscalearmor, 1)
		setPlayerStorageValue(cid,8114,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Shaman Treasure --
elseif item.uid == 8115 then
	if getPlayerStorageValue(cid,8115) <= 0 then
		if getPlayerFreeCap(cid) <= 4 then
		doPlayerSendTextMessage(cid,22,"You need 4 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found some blank runes.")
		doPlayerAddItem(cid, Cfblankrune, 1)
		doPlayerAddItem(cid, Cfblankrune, 1)
		doPlayerAddItem(cid, Cfblankrune, 1)
		setPlayerStorageValue(cid,8115,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Six small rubies --
elseif item.uid == 8116 then
	if getPlayerStorageValue(cid,8116) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found some small rubies.")
		doPlayerAddItem(cid, Cfsmallruby, 6)
		setPlayerStorageValue(cid,8116,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Skull Quest(Amazon Camp floor -1) --
elseif item.uid == 8117 then
	if getPlayerStorageValue(cid,8117) <= 0 then
		if getPlayerFreeCap(cid) <= 50 then
		doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfwhitepearl, 1)
		doAddContainerItem(BAG, Cfskull, 1)
		setPlayerStorageValue(cid,8117,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Spike Sword --
elseif item.uid == 8118 then
	if getPlayerStorageValue(cid,8118) <= 0 then
		if getPlayerFreeCap(cid) <= 50 then
		doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a spike sword.")
		doPlayerAddItem(cid, Cfspikesword, 1)
		setPlayerStorageValue(cid,8118,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Stealth ring --
elseif item.uid == 8119 then
	if getPlayerStorageValue(cid,8119) <= 0 then
		if getPlayerFreeCap(cid) <= 9 then
		doPlayerSendTextMessage(cid,22,"You need 9 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfstealthring, 1)
		setPlayerStorageValue(cid,8119,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8120 then
	if getPlayerStorageValue(cid,8120) <= 0 then
		if getPlayerFreeCap(cid) <= 6 then
		doPlayerSendTextMessage(cid,22,"You need 6 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a protection amulet.")
		doPlayerAddItem(cid, Cfprotectionamulet, 250)
		setPlayerStorageValue(cid,8120,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Steel Helmet --
elseif item.uid == 8121 then
	if getPlayerStorageValue(cid,8121) <= 0 then
		if getPlayerFreeCap(cid) <= 46 then
		doPlayerSendTextMessage(cid,22,"You need 46 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a steel helmet.")
		doPlayerAddItem(cid, Cfsteelhelmet, 1)
		setPlayerStorageValue(cid,8121,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8122 then
	if getPlayerStorageValue(cid,8122) <= 0 then
		if getPlayerFreeCap(cid) <= 6 then
		doPlayerSendTextMessage(cid,22,"You need 6 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found 56 gold coins.")
		doPlayerAddItem(cid, Cfgoldcoin, 56)
		setPlayerStorageValue(cid,8122,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8123 then
	if getPlayerStorageValue(cid,8123) <= 0 then
		if getPlayerFreeCap(cid) <= 5 then
		doPlayerSendTextMessage(cid,22,"You need 5 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found 47 gold coins.")
		doPlayerAddItem(cid, Cfgoldcoin, 47)
		setPlayerStorageValue(cid,8123,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Battle Hammer --
elseif item.uid == 8124 then
	if getPlayerStorageValue(cid,8124) <= 0 then
		if getPlayerFreeCap(cid) <= 68 then
		doPlayerSendTextMessage(cid,22,"You need 68 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a battle hammer.")
		doPlayerAddItem(cid, Cfbattlehammer, 1)
		setPlayerStorageValue(cid,8124,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8125 then
	if getPlayerStorageValue(cid,8125) <= 0 then
		if getPlayerFreeCap(cid) <= 52 then
		doPlayerSendTextMessage(cid,22,"You need 52 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a dark shield.")
		doPlayerAddItem(cid, Cfdarkshield, 1)
		setPlayerStorageValue(cid,8125,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Desert Quest --
elseif item.uid == 8126 then
	if getPlayerStorageValue(cid,8126) <= 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found 100 platinum coins.")
		doPlayerAddItem(cid, Cfplatinumcoin, 100)
		setPlayerStorageValue(cid,8126,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8127 then
	if getPlayerStorageValue(cid,8127) <= 0 then
		if getPlayerFreeCap(cid) <= 34 then
		doPlayerSendTextMessage(cid,22,"You need 34 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfgreenbag, 1)
		doAddContainerItem(BAG, Cfankh, 1)
		doAddContainerItem(BAG, Cfmagiclightwand, 1)
		doAddContainerItem(BAG, Cfringofhealing, 1)
		doAddContainerItem(BAG, Cfprotectionamulet, 250)
		setPlayerStorageValue(cid,8127,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Green djinn quest, tear of daraman --
elseif item.uid == 8133 then
	if getPlayerStorageValue(cid,8133) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a tear of daraman.")
		doCreateItem(2346, 1, getPlayerPosition(cid))
		setPlayerStorageValue(cid,8131,2) --Alesar--
		setPlayerStorageValue(cid,8133,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Outlaw keys --
elseif item.uid == 8134 then
	if getPlayerStorageValue(cid,8134) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a copper key!")
		KEY = doPlayerAddItem(cid, Cfcopperkey, 1)
		doSetItemActionId(KEY, 2039)
		doSetItemSpecialDescription(KEY, "(Key: 3301)")
		setPlayerStorageValue(cid,8134,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8135 then
	if getPlayerStorageValue(cid,8135) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, Cfsilverkey, 1)
		doSetItemActionId(KEY, 2040)
		doSetItemSpecialDescription(KEY, "(Key: 3302)")
		setPlayerStorageValue(cid,8135,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8136 then
	if getPlayerStorageValue(cid,8136) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a copper key!")
		KEY = doPlayerAddItem(cid, Cfcopperkey, 1)
		doSetItemActionId(KEY, 2041)
		doSetItemSpecialDescription(KEY, "(Key: 3303)")
		setPlayerStorageValue(cid,8136,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8137 then
	if getPlayerStorageValue(cid,8137) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a golden key!")
		KEY = doPlayerAddItem(cid, Cfgoldenkey, 1)
		doSetItemActionId(KEY, 2042)
		doSetItemSpecialDescription(KEY, "(Key: 3304)")
		setPlayerStorageValue(cid,8137,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Bright Sword --
elseif item.uid == 8138 then
	if getPlayerStorageValue(cid,8138) <= 0 then
		if getPlayerFreeCap(cid) <= 30 then
		doPlayerSendTextMessage(cid,22,"You need 30 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bright sword and a red gem!")
		doPlayerAddItem(cid, Cfbrightsword, 1)
		doPlayerAddItem(cid, Cfredgem, 1)
		setPlayerStorageValue(cid,8138,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Queen of the banshee --
elseif item.uid == 8139 then
	if getPlayerStorageValue(cid,8139) <= 0 then
		if getPlayerFreeCap(cid) <= 8 then
		doPlayerSendTextMessage(cid,22,"You need 8 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a pair boots of haste.")
		doPlayerAddItem(cid, Cfbootsofhaste, 1)
		setPlayerStorageValue(cid,8139,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8140 then
	if getPlayerStorageValue(cid,8140) <= 0 then
		if getPlayerFreeCap(cid) <= 180 then
		doPlayerSendTextMessage(cid,22,"You need 180 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a giant sword.")
		doPlayerAddItem(cid, Cfgiantsword, 1)
		setPlayerStorageValue(cid,8140,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8141 then
	if getPlayerStorageValue(cid,8141) <= 0 then
		if getPlayerFreeCap(cid) <= 82 then
		doPlayerSendTextMessage(cid,22,"You need 82 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a tower shield.")
		doPlayerAddItem(cid, Cftowershield, 1)
		setPlayerStorageValue(cid,8141,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8142 then
	if getPlayerStorageValue(cid,8142) <= 0 then
		if getPlayerFreeCap(cid) <= 27 then
		doPlayerSendTextMessage(cid,22,"You need 27 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfplatinumcoin, 100)
		doAddContainerItem(BAG, Cfstoneskinamulet, 5)
		doAddContainerItem(BAG, Cfstealthring, 1)
		setPlayerStorageValue(cid,8142,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Throwing star --
elseif item.uid == 8143 then
	if getPlayerStorageValue(cid,8143) <= 0 then
		if getPlayerFreeCap(cid) <= 20 then
		doPlayerSendTextMessage(cid,22,"You need 20 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found 10 throwing stars.")
		doPlayerAddItem(cid, Cfthrowingstar, 10)
		setPlayerStorageValue(cid,8143,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Time Ring --
elseif item.uid == 8144 then
	if getPlayerStorageValue(cid,8144) <= 0 then
		if getPlayerFreeCap(cid) <= 9 then
		doPlayerSendTextMessage(cid,22,"You need 9 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a time ring.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cftimering, 1)
		setPlayerStorageValue(cid,8144,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8145 then
	if getPlayerStorageValue(cid,8145) <= 0 then
		if getPlayerFreeCap(cid) <= 3 then
		doPlayerSendTextMessage(cid,22,"You need 3 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a elven amulet.")
		doPlayerAddItem(cid, Cfelvenamulet, 50)
		setPlayerStorageValue(cid,8145,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8146 then
	if getPlayerStorageValue(cid,8146) <= 0 then
		if getPlayerFreeCap(cid) <= 34 then
		doPlayerSendTextMessage(cid,22,"You need 34 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a crystal ball.")
		doPlayerAddItem(cid, Cfcrystallball, 1)
		setPlayerStorageValue(cid,8146,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Triangle Tower --
elseif item.uid == 8147 then
	if getPlayerStorageValue(cid,8147) <= 0 then
		if getPlayerFreeCap(cid) <= 14 then
		doPlayerSendTextMessage(cid,22,"You need 14 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfgarlicnecklace, 150)
		doAddContainerItem(BAG, Cfsmallsapphire, 2)
		doAddContainerItem(BAG, Cfdwarvenring, 1)
		setPlayerStorageValue(cid,8147,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Troll Cave --
elseif item.uid == 8148 then
	if getPlayerStorageValue(cid,8148) <= 0 then
		if getPlayerFreeCap(cid) <= 38 then
		doPlayerSendTextMessage(cid,22,"You need 38 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a pair brass legs.")
		doPlayerAddItem(cid, Cfbrasslegs, 1)
		setPlayerStorageValue(cid,8148,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8149 then
	if getPlayerStorageValue(cid,8149) <= 0 then
		if getPlayerFreeCap(cid) <= 4 then
		doPlayerSendTextMessage(cid,22,"You need 4 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a garlic necklace.")
		doPlayerAddItem(cid, Cfgarlicnecklace, 150)
		setPlayerStorageValue(cid,8149,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Vampire Shield --
elseif item.uid == 8150 then
	if getPlayerStorageValue(cid,8150) <= 0 then
		if getPlayerFreeCap(cid) <= 67 then
		doPlayerSendTextMessage(cid,22,"You need 67 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a dragon lance.")
		doPlayerAddItem(cid, Cfdragonlance, 1)
		setPlayerStorageValue(cid,8150,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8151 then
	if getPlayerStorageValue(cid,8151) <= 0 then
		if getPlayerFreeCap(cid) <= 54 then
		doPlayerSendTextMessage(cid,22,"You need 54 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfmysteriousfetish, 1)
		doAddContainerItem(BAG, Cfblackpearl, 1)
		doAddContainerItem(BAG, Cfstrangesymbol, 1)
		doAddContainerItem(BAG, Cfvampireshield, 1)
		setPlayerStorageValue(cid,8151,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Voodoo Doll --
elseif item.uid == 8152 then
	if getPlayerStorageValue(cid,8152) <= 0 then
		if getPlayerFreeCap(cid) <= 5 then
		doPlayerSendTextMessage(cid,22,"You need 5 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a voodoo doll.")
		doPlayerAddItem(cid, Cfvoodoodoll, 1)
		setPlayerStorageValue(cid,8152,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8153 then
	if getPlayerStorageValue(cid,8153) <= 0 then
		if getPlayerFreeCap(cid) <= 15 then
		doPlayerSendTextMessage(cid,22,"You need 15 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a magic lightwand.")
		doPlayerAddItem(cid, Cfmagiclightwand, 1)
		setPlayerStorageValue(cid,8153,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Wedding Ring --
elseif item.uid == 8154 then
	if getPlayerStorageValue(cid,8154) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a wedding ring.")
		doPlayerAddItem(cid, Cfweddingring, 1)
		setPlayerStorageValue(cid,8154,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8155 then
	if getPlayerStorageValue(cid,8155) <= 0 then
		if getPlayerFreeCap(cid) <= 7 then
		doPlayerSendTextMessage(cid,22,"You need 7 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a dragon necklace.")
		doPlayerAddItem(cid, Cfdragonnecklace, 200)
		setPlayerStorageValue(cid,8155,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- White Pearl --
elseif item.uid == 8156 then
	if getPlayerStorageValue(cid,8156) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a white pearl.")
		doPlayerAddItem(cid, Cfwhitepearl, 1)
		setPlayerStorageValue(cid,8156,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Holy Tible --
elseif item.uid == 8159 then
	if getPlayerStorageValue(cid,8159) <= 0 then
		if getPlayerFreeCap(cid) <= 13 then
		doPlayerSendTextMessage(cid,22,"You need 13 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found the holy tible.")
		THEHOLYTIBLE = doPlayerAddItem(cid, Cftheholytible, 1)
		doSetItemText(THEHOLYTIBLE, "Banor I praise your name.\nBe with me in the battle.\nBe my shield, let me be your sword.\nI will honour the godly spark in my soul.\nMay it flourish and grow.")
		setPlayerStorageValue(cid,8159,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- The Annihilator --
elseif item.uid == 8160 then
	if getPlayerStorageValue(cid,8160) <= 0 then
		if getPlayerFreeCap(cid) <= 80 then
		doPlayerSendTextMessage(cid,22,"You need 80 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a demon armor.")
		doPlayerAddItem(cid, Cfdemonarmor, 1)
		setPlayerStorageValue(cid,8160,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8161 then
	if getPlayerStorageValue(cid,8160) <= 0 then
		if getPlayerFreeCap(cid) <= 42 then
		doPlayerSendTextMessage(cid,22,"You need 42 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a magic sword.")
		doPlayerAddItem(cid, Cfmagicsword, 1)
		setPlayerStorageValue(cid,8160,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8162 then
	if getPlayerStorageValue(cid,8160) <= 0 then
		if getPlayerFreeCap(cid) <= 99 then
		doPlayerSendTextMessage(cid,22,"You need 99 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a stonecutter axe.")
		doPlayerAddItem(cid, Cfstonecutteraxe, 1)
		setPlayerStorageValue(cid,8160,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.uid == 8163 then
	if getPlayerStorageValue(cid,8160) <= 0 then
		if getPlayerFreeCap(cid) <= 49 then
		doPlayerSendTextMessage(cid,22,"You need 49 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a present.")
		PRESENT = doPlayerAddItem(cid, Cfpresent, 1)
		doAddContainerItem(PRESENT, 2326, 1)
		setPlayerStorageValue(cid,8160,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Old Mintwallin Quest --
elseif item.uid == 8167 then
	if getPlayerStorageValue(cid,8167) <= 0 then
		if getPlayerFreeCap(cid) <= 13 then
		doPlayerSendTextMessage(cid,22,"You need 13 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a bag.")
		BAG = doPlayerAddItem(cid, Cfbag, 1)
		doAddContainerItem(BAG, Cfbrassarmor, 1)
		doAddContainerItem(BAG, Cfbrasslegs, 1)
		doAddContainerItem(BAG, Cfhatchet, 1)
		doAddContainerItem(BAG, Cfthrowingstar, 13)
		setPlayerStorageValue(cid,8167,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Green Djinn last mission --
elseif item.uid == 8174 then
	if getPlayerStorageValue(cid,8174) <= 0 then
		if getPlayerStorageValue(cid,8173) < 2 then
		doPlayerSendTextMessage(cid,22,"it's locked.")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"This chest seems to be empty, return to Ubaid.")
		setPlayerStorageValue(cid,8174,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Green Djinn last mission --
elseif item.uid == 8180 then
	if getPlayerStorageValue(cid,8180) <= 0 then
		if getPlayerStorageValue(cid,8178) < 2 then
		doPlayerSendTextMessage(cid,22,"it's locked.")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"This chest seems to be empty, return to Umar.")
		setPlayerStorageValue(cid,8180,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3600 --
elseif item.uid == 8181 then
	if getPlayerStorageValue(cid,8181) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a silver key!")
		KEY = doPlayerAddItem(cid, Cfsilverkey, 1)
		doSetItemActionId(KEY, 2034)
		doSetItemSpecialDescription(KEY, "(Key: 3600)")
		setPlayerStorageValue(cid,8181,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- The Pits Of Inferno Quest --
	--Arcane staff
elseif item.uid == 8182 then
	if getPlayerStorageValue(cid,8182) <= 0 then
		if getPlayerFreeCap(cid) <= 40 then
		doPlayerSendTextMessage(cid,22,"You need 40 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found an arcane staff!")
		doPlayerAddItem(cid, Cfarcanestaff, 1)
		setPlayerStorageValue(cid,8182,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
	--The Avenger
elseif item.uid == 8183 then
	if getPlayerStorageValue(cid,8182) <= 0 then
		if getPlayerFreeCap(cid) <= 64 then
		doPlayerSendTextMessage(cid,22,"You need 64 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found an avenger!")
		doPlayerAddItem(cid, Cfavanger, 1)
		setPlayerStorageValue(cid,8182,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
	--Arbalest
elseif item.uid == 8184 then
	if getPlayerStorageValue(cid,8182) <= 0 then
		if getPlayerFreeCap(cid) <= 95 then
		doPlayerSendTextMessage(cid,22,"You need 95 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found an arbalest!")
		doPlayerAddItem(cid, Cfarbalest, 1)
		setPlayerStorageValue(cid,8182,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
	
------------------------
------------------------
elseif item.uid == 8185 then
	if getPlayerStorageValue(cid,8185) <= 0 then
		if getPlayerFreeCap(cid) <= 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found 100 platinum coins!")
		doPlayerAddItem(cid, 2152, 100)
		setPlayerStorageValue(cid,8185,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
	
elseif item.uid == 8186 then
	if getPlayerStorageValue(cid,8186) <= 0 then
		if getPlayerFreeCap(cid) <= 8 then
		doPlayerSendTextMessage(cid,22,"You need 8 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a pair of soft boots!")
		doPlayerAddItem(cid, Cfsoftboots, 1)
		setPlayerStorageValue(cid,8186,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
	
elseif item.uid == 8187 then
	if getPlayerStorageValue(cid,8187) <= 0 then
		if getPlayerFreeCap(cid) <= 113 then
		doPlayerSendTextMessage(cid,22,"You need 113 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a backpack of holding!")
		BpofHolding = doPlayerAddItem(cid, Cfbackpackofholding, 100)
		doAddContainerItem(BpofHolding, Cfultimatehealingrune, 10)
		doAddContainerItem(BpofHolding, Cfsuddendeathrune, 10)
		doAddContainerItem(BpofHolding, Cfexplosionrune, 20)
		doAddContainerItem(BpofHolding, Cfheavymagicmissilerune, 100)
		setPlayerStorageValue(cid,8187,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
	
elseif item.uid == 8188 then
	if getPlayerStorageValue(cid,8188) <= 0 then
		if getPlayerFreeCap(cid) <= 9 then
		doPlayerSendTextMessage(cid,22,"You need 9 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a stuffed dragon!")
		doPlayerAddItem(cid, Cfstuffeddragon, 1)
		setPlayerStorageValue(cid,8188,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
	
elseif item.uid == 8189 then
	if getPlayerStorageValue(cid,8189) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a frozen starlight!")
		doPlayerAddItem(cid, Cffrozenstarlight, 1)
		setPlayerStorageValue(cid,8189,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end

elseif item.uid == 8190 then
	if getPlayerStorageValue(cid,8190) <= 0 then
		if getPlayerFreeCap(cid) <= 12 then
		doPlayerSendTextMessage(cid,22,"You need 12 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a ceremonial ankh!")
		doPlayerAddItem(cid, Cfceremonialankh, 1)
		setPlayerStorageValue(cid,8190,1)
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Key 3899(Paradox Tower) --
elseif item.uid == 8192 then
	if getPlayerStorageValue(cid,8192) <= 0 then
		if getPlayerFreeCap(cid) <= 1 then
		doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a key!")
		KEY = doPlayerAddItem(cid, Cfcopperkey, 1)
		doSetItemActionId(KEY, 2044)
		doSetItemSpecialDescription(KEY, "(Key: 3899)")
		setPlayerStorageValue(cid,8192,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
-- Paradox Tower --
--10k
elseif item.uid == 8200 then
	if getPlayerStorageValue(cid,8200) <= 0 then
		if getPlayerFreeCap(cid) < 10 then
		doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found 100 platinum coins!")
		doPlayerAddItem(cid, Cfplatinumcoin, 100)
		setPlayerStorageValue(cid,8200,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
--yellow spell wand
elseif item.uid == 8201 then
	if getPlayerStorageValue(cid,8201) <= 0 then
		if getPlayerFreeCap(cid) < 23 then
		doPlayerSendTextMessage(cid,22,"You need 23 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found a yellow spell wand!")
		doPlayerAddItem(cid, 2189, 1)
		setPlayerStorageValue(cid,8201,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
--Talons
elseif item.uid == 8202 then
	if getPlayerStorageValue(cid,8202) <= 0 then
		if getPlayerFreeCap(cid) < 7 then
		doPlayerSendTextMessage(cid,22,"You need 7 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have found 32 talons!")
		doPlayerAddItem(cid, Cftalon, 32)
		setPlayerStorageValue(cid,8202,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
--Phoenix Egg
elseif item.uid == 8203 then
	if getPlayerStorageValue(cid,8203) <= 0 then
		if getPlayerFreeCap(cid) < 7 then
		doPlayerSendTextMessage(cid,22,"You need 7 cap or more to loot this!")
		return TRUE
		end
		doPlayerSendTextMessage(cid,22,"You have egg!")
		doPlayerAddItem(cid, Cfphoenixegg, 1)
		setPlayerStorageValue(cid,8203,1)
		
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
-----
-----
--//HOTA//--
--Piece 1
elseif item.uid == 8206 then
	if getPlayerStorageValue(cid,8206) <= 0 then
		if doPlayerRemoveItem(cid,2352,1) then
		doPlayerSendTextMessage(cid,22,"You have found a Helmet Adornment!")
		doPlayerAddItem(cid, 2341, 1)
		setPlayerStorageValue(cid,8206,1)		
		else
		doPlayerSendTextMessage(cid,22,"You don't deserve this item yet!")
		end
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
--Piece 2
elseif item.uid == 8207 then
	if getPlayerStorageValue(cid,8207) <= 0 then
		if doPlayerRemoveItem(cid,2351,1) then
		doPlayerSendTextMessage(cid,22,"You have found a Gem Holder!")
		doPlayerAddItem(cid, 2336, 1)
		setPlayerStorageValue(cid,8207,1)
        else		
		doPlayerSendTextMessage(cid,22,"You don't deserve this item yet!")
		end
     	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
--Piece 3
elseif item.uid == 8208 then
	if getPlayerStorageValue(cid,8208) <= 0 then
		if doPlayerRemoveItem(cid,2354,1) then
		doPlayerSendTextMessage(cid,22,"You have found a Damaged Helmet!")
		doPlayerAddItem(cid, 2339, 1)
		setPlayerStorageValue(cid,8208,1)
else		
		doPlayerSendTextMessage(cid,22,"You don't deserve this item yet!")
		end
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
--Piece 4
elseif item.uid == 8209 then
	if getPlayerStorageValue(cid,8209) <= 0 then
		if doPlayerRemoveItem(cid,2353,1) then
		doPlayerSendTextMessage(cid,22,"You have found a Helmet Ornament!")
		doPlayerAddItem(cid, 2335, 1)
		setPlayerStorageValue(cid,8209,1)
		else
		doPlayerSendTextMessage(cid,22,"You don't deserve this item yet!")
		end
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
--Piece 5
elseif item.uid == 8210 then
	if getPlayerStorageValue(cid,8210) <= 0 then
		if doPlayerRemoveItem(cid,2349,1) then
		doPlayerSendTextMessage(cid,22,"You have found a Left Horn!")
		doPlayerAddItem(cid, 2338, 1)
		setPlayerStorageValue(cid,8210,1)
		else
		doPlayerSendTextMessage(cid,22,"You don't deserve this item yet!")
		end
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end
--Piece 4
elseif item.uid == 8211 then
	if getPlayerStorageValue(cid,8211) <= 0 then
		if doPlayerRemoveItem(cid,2350,1) then
		doPlayerSendTextMessage(cid,22,"You have found a Right Horn!.")
		setPlayerStorageValue(cid,8211,1)
		doPlayerAddItem(cid, 2337, 1)
		else
		doPlayerSendTextMessage(cid,22,"You don't deserve this reward yet!")
		end
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end

elseif item.uid == 8212 then
	if getPlayerStorageValue(cid,8212) <= 0 then
		if doPlayerRemoveItem(cid,2348,1) then
		doPlayerSendTextMessage(cid,22,"You have found a Helmet Piece!.")
		setPlayerStorageValue(cid,8212,1)
		doPlayerAddItem(cid, 2340, 1)
		else
		doPlayerSendTextMessage(cid,22,"You don't deserve this reward yet!")
		end
	else
	doPlayerSendTextMessage(cid,22,"it's empty.")
	end	
-----
-----
else	
  return 0
end
return 1
end

