function isInArray(array, value, caseSensitive)
	if(caseSensitive == nil or caseSensitive == false) and type(value) == "string" then
		local lowerValue = value:lower()
		for _, _value in ipairs(array) do
			if type(_value) == "string" and lowerValue == _value:lower() then
				return true
			end
		end
	else
		for _, _value in ipairs(array) do
			if (value == _value) then return true end
		end
	end

	return false
end

function doPlayerGiveItem(cid, itemid, amount, subType)
	local item = 0
	if(isItemStackable(itemid)) then
		item = doCreateItemEx(itemid, amount)
		if(doPlayerAddItemEx(cid, item, true) ~= RETURNVALUE_NOERROR) then
			return false
		end
	else
		for i = 1, amount do
			item = doCreateItemEx(itemid, subType)
			if(doPlayerAddItemEx(cid, item, true) ~= RETURNVALUE_NOERROR) then
				return false
			end
		end
	end

	return true
end

function doPlayerGiveItemContainer(cid, containerid, itemid, amount, subType)
	for i = 1, amount do
		local container = doCreateItemEx(containerid, 1)
		for x = 1, getContainerCapById(containerid) do
			doAddContainerItem(container, itemid, subType)
		end

		if(doPlayerAddItemEx(cid, container, true) ~= RETURNVALUE_NOERROR) then
			return false
		end
	end

	return true
end

function doPlayerTakeItem(cid, itemid, amount)
	return getPlayerItemCount(cid, itemid) >= amount and doPlayerRemoveItem(cid, itemid, amount)
end

function doPlayerSellItem(cid, itemid, count, cost)
	if(not doPlayerTakeItem(cid, itemid, count)) then
		return false
	end

	if(not doPlayerAddMoney(cid, cost)) then
		error('[doPlayerSellItem] Could not add money to: ' .. getPlayerName(cid) .. ' (' .. cost .. 'gp).')
	end

	return true
end

function doPlayerWithdrawMoney(cid, amount)
	if(not getBooleanFromString(getConfigInfo('bankSystem'))) then
		return false
	end

	local balance = getPlayerBalance(cid)
	if(amount > balance or not doPlayerAddMoney(cid, amount)) then
		return false
	end

	doPlayerSetBalance(cid, balance - amount)
	return true
end

function doPlayerDepositMoney(cid, amount)
	if(not getBooleanFromString(getConfigInfo('bankSystem'))) then
		return false
	end

	if(not doPlayerRemoveMoney(cid, amount)) then
		return false
	end

	doPlayerSetBalance(cid, getPlayerBalance(cid) + amount)
	return true
end

function doPlayerAddStamina(cid, minutes)
	return doPlayerSetStamina(cid, getPlayerStamina(cid) + minutes)
end

function isPremium(cid)
	return (isPlayer(cid) and (getPlayerPremiumDays(cid) > 0 or getBooleanFromString(getConfigValue('freePremium'))))
end

function getMonthDayEnding(day)
	if(day == "01" or day == "21" or day == "31") then
		return "st"
	elseif(day == "02" or day == "22") then
		return "nd"
	elseif(day == "03" or day == "23") then
		return "rd"
	end

	return "th"
end

function getMonthString(m)
	return os.date("%B", os.time{year = 1970, month = m, day = 1})
end

function getArticle(str)
	return str:find("[AaEeIiOoUuYy]") == 1 and "an" or "a"
end

function doNumberFormat(i)
	local str, found = string.gsub(i, "(%d)(%d%d%d)$", "%1,%2", 1), 0
	repeat
		str, found = string.gsub(str, "(%d)(%d%d%d),", "%1,%2,", 1)
	until found == 0
	return str
end

function doPlayerAddAddons(cid, addon)
	for i = 0, table.maxn(maleOutfits) do
		doPlayerAddOutfit(cid, maleOutfits[i], addon)
	end

	for i = 0, table.maxn(femaleOutfits) do
		doPlayerAddOutfit(cid, femaleOutfits[i], addon)
	end
end

function getTibiaTime(num)
	local minutes, hours = getWorldTime(), 0
	while (minutes > 60) do
		hours = hours + 1
		minutes = minutes - 60
	end

	if(num) then
		return {hours = hours, minutes = minutes}
	end

	return {hours =  hours < 10 and '0' .. hours or '' .. hours, minutes = minutes < 10 and '0' .. minutes or '' .. minutes}
end

function doWriteLogFile(file, text)
	local f = io.open(file, "a+")
	if(not f) then
		return false
	end

	f:write("[" .. os.date("%d/%m/%Y %H:%M:%S") .. "] " .. text .. "\n")
	f:close()
	return true
end

function getExperienceForLevel(lv)
	lv = lv - 1
	return ((50 * lv * lv * lv) - (150 * lv * lv) + (400 * lv)) / 3
end

function doMutePlayer(cid, time)
	local condition = createConditionObject(CONDITION_MUTED, (time == -1 and time or time * 1000))
	return doAddCondition(cid, condition, false)

end

function doSummonCreature(name, pos)
	local cid = doCreateMonster(name, pos, false, false)
	if(not cid) then
		cid = doCreateNpc(name, pos)
	end

	return cid
end

function getPlayersOnlineEx()
	local players = {}
	for i, cid in ipairs(getPlayersOnline()) do
		table.insert(players, getCreatureName(cid))
	end

	return players
end

function getPlayerByName(name)
	local cid = getCreatureByName(name)
	return isPlayer(cid) and cid or nil
end

function isPlayer(cid)
	return isCreature(cid) and cid >= AUTOID_PLAYERS and cid < AUTOID_MONSTERS
end

function isPlayerGhost(cid)
	return isPlayer(cid) and (getCreatureCondition(cid, CONDITION_GAMEMASTER, GAMEMASTER_INVISIBLE, CONDITIONID_DEFAULT) or getPlayerFlagValue(cid, PLAYERFLAG_CANNOTBESEEN))
end

function isMonster(cid)
	return isCreature(cid) and cid >= AUTOID_MONSTERS and cid < AUTOID_NPCS
end

function isNpc(cid)
	-- Npc IDs are over int32_t range (which is default for lua_pushnumber),
	-- therefore number is always a negative value.
	return isCreature(cid) and (cid < 0 or cid >= AUTOID_NPCS)
end

function isUnderWater(cid)
	return isInArray(underWater, getTileInfo(getCreaturePosition(cid)).itemid)
end

function doPlayerAddLevel(cid, amount, round)
	local experience, level, amount = 0, getPlayerLevel(cid), amount or 1
	if(amount > 0) then
		experience = getExperienceForLevel(level + amount) - (round and getPlayerExperience(cid) or getExperienceForLevel(level))
	else
		experience = -((round and getPlayerExperience(cid) or getExperienceForLevel(level)) - getExperienceForLevel(level + amount))
	end

	return doPlayerAddExperience(cid, experience)
end

function doPlayerAddMagLevel(cid, amount)
	local amount = amount or 1
	for i = 1, amount do
		doPlayerAddSpentMana(cid, getPlayerRequiredMana(cid, getPlayerMagLevel(cid, true) + 1) - getPlayerSpentMana(cid), false)
	end

	return true
end

function doPlayerAddSkill(cid, skill, amount, round)
	local amount = amount or 1
	if(skill == SKILL__LEVEL) then
		return doPlayerAddLevel(cid, amount, round)
	elseif(skill == SKILL__MAGLEVEL) then
		return doPlayerAddMagLevel(cid, amount)
	end

	for i = 1, amount do
		doPlayerAddSkillTry(cid, skill, getPlayerRequiredSkillTries(cid, skill, getPlayerSkillLevel(cid, skill) + 1) - getPlayerSkillTries(cid, skill), false)
	end

	return true
end

function isPrivateChannel(channelId)
	return channelId >= CHANNEL_PRIVATE
end

function doBroadcastMessage(text, class)
	local class = class or MESSAGE_STATUS_WARNING
	if(type(class) == 'string') then
		local className = MESSAGE_TYPES[class]
		if(className == nil) then
			return false
		end

		class = className
	elseif(class < MESSAGE_FIRST or class > MESSAGE_LAST) then
		return false
	end

	for _, pid in ipairs(getPlayersOnline()) do
		doPlayerSendTextMessage(pid, class, text)
	end

	print("> Broadcasted message: \"" .. text .. "\".")
	return true
end

function doPlayerBroadcastMessage(cid, text, class, checkFlag, ghost)
	local checkFlag, ghost, class = checkFlag or true, ghost or false, class or TALKTYPE_BROADCAST
	if(checkFlag and not getPlayerFlagValue(cid, PLAYERFLAG_CANBROADCAST)) then
		return false
	end

	if(type(class) == 'string') then
		local className = TALKTYPE_TYPES[class]
		if(className == nil) then
			return false
		end

		class = className
	elseif(class < TALKTYPE_FIRST or class > TALKTYPE_LAST) then
		return false
	end

	for _, pid in ipairs(getPlayersOnline()) do
		doCreatureSay(cid, text, class, ghost, pid)
	end

	print("> " .. getCreatureName(cid) .. " broadcasted message: \"" .. text .. "\".")
	return true
end

function doCopyItem(item, attributes)
	local attributes = ((type(attributes) == 'table') and attributes or { "aid" })

	local ret = doCreateItemEx(item.itemid, item.type)
	for _, key in ipairs(attributes) do
		local value = getItemAttribute(item.uid, key)
		if(value ~= nil) then
			doItemSetAttribute(ret, key, value)
		end
	end

	if(isContainer(item.uid)) then
		for i = (getContainerSize(item.uid) - 1), 0, -1 do
			local tmp = getContainerItem(item.uid, i)
			if(tmp.itemid > 0) then
				doAddContainerItemEx(ret, doCopyItem(tmp, true).uid)
			end
		end
	end

	return getThing(ret)
end

function doSetItemText(uid, text, writer, date)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	doItemSetAttribute(uid, "text", text)
	if(writer ~= nil) then
		doItemSetAttribute(uid, "writer", tostring(writer))
		if(date ~= nil) then
			doItemSetAttribute(uid, "date", tonumber(date))
		end
	end

	return true
end

function getItemWeightById(itemid, count, precision)
	local item, count, precision = getItemInfo(itemid), count or 1, precision or false
	if(not item) then
		return false
	end

	if(count > 100) then
		-- print a warning, as its impossible to have more than 100 stackable items without "cheating" the count
		print('[Warning] getItemWeightById', 'Calculating weight for more than 100 items!')
	end

	local weight = item.weight * count
	return precission and weight or math.round(weight, 2)
end

function choose(...)
	local arg, ret = {...}

	if type(arg[1]) == 'table' then
		ret = arg[1][math.random(#arg[1])]
	else
		ret = arg[math.random(#arg)]
	end

	return ret
end

function doPlayerAddExpEx(cid, amount)
	if(not doPlayerAddExp(cid, amount)) then
		return false
	end

	local position = getThingPosition(cid)
	doPlayerSendTextMessage(cid, MESSAGE_EXPERIENCE, "You gained " .. amount .. " experience.", amount, COLOR_WHITE, position)

	local spectators, name = getSpectators(position, 7, 7), getCreatureName(cid)
	for _, pid in ipairs(spectators) do
		if(isPlayer(pid) and cid ~= pid) then
			doPlayerSendTextMessage(pid, MESSAGE_EXPERIENCE_OTHERS, name .. " gained " .. amount .. " experience.", amount, COLOR_WHITE, position)
		end
	end

	return true
end

function getItemTopParent(uid)
	local parent = getItemParent(uid)
	if(not parent or parent.uid == 0) then
		return nil
	end

	while(true) do
		local tmp = getItemParent(parent.uid)
		if(tmp and tmp.uid ~= 0) then
			parent = tmp
		else
			break
		end
	end

	return parent
end

function getItemHolder(uid)
	local parent = getItemParent(uid)
	if(not parent or parent.uid == 0) then
		return nil
	end

	local holder = nil
	while(true) do
		local tmp = getItemParent(parent.uid)
		if(tmp and tmp.uid ~= 0) then
			if(tmp.itemid == 1) then -- a creature
				holder = tmp
				break
			end

			parent = tmp
		else
			break
		end
	end

	return holder
end

function valid(f)
	return function(p, ...)
		if(isCreature(p)) then
			return f(p, ...)
		end
	end
end

function getPlayerMarriage(player)
		local rows = db.getResult("SELECT `marriage` FROM `players` WHERE `id` = " .. player .. ";")
		local marry = rows:getDataInt("marriage")
		if marry ~= 0 then
				return marry
		else
				return FALSE
		end
end

function addMarryStatus(player,partner)
		db.executeQuery("UPDATE `players` SET `marrystatus` = " .. partner .. " WHERE `id` = " .. player .. ";")
		return TRUE
end

function doCancelMarryStatus(player)
		db.executeQuery("UPDATE `players` SET `marrystatus` = 0 WHERE `id` = " .. player .. ";")
		return TRUE
end

function getMarryStatus(player)
		local stat = db.getResult("SELECT `id` FROM `players` WHERE `marrystatus` = " .. player .. ";")
		if(stat:getID() == -1) then
				return FALSE
		else
				local info = stat:getDataInt("id")
				return info
		end
end

function getOwnMarryStatus(player)
		local stat = db.getResult("SELECT `marrystatus` FROM `players` WHERE `id` = " .. player .. ";")
		if(stat:getID() == -1) then
				return FALSE
		else
				local info = stat:getDataInt("marrystatus")
				return info
		end
end

function isOnline(player)
		local rows = db.getResult("SELECT `online` FROM `players` WHERE `id` = " .. player .. ";")
		local on = rows:getDataInt("online")
		if on ~= 0 then
				return TRUE
		else
				return FALSE
		end
end

function addContainerItems(container,items)
	local items_mod = {}
	for _, it in ipairs(items) do
		if( isItemStackable(it.id) and it.count > 100) then
			local c = it.count
			while( c > 100 ) do
				table.insert(items_mod,{id = it.id,count = 100})
				c = c - 100
			end
			if(c > 0) then
				table.insert(items_mod,{id = it.id,count = c})
			end
		else
			table.insert(items_mod,{id = it.id,count = 1})
		end
	end

	local free = getContainerCap(container.uid) - (getContainerSize(container.uid) )
	local count = math.ceil(#items_mod/ free)
	local main_bp = container.uid
	local insert_bp = main_bp
	local counter = 1
	for c,it in ipairs(items_mod) do
		local _c = isItemStackable(it.id) and (it.count > 100 and 100 or it.count) or 1
		if count > 1 then
			if (counter < free) then
				doAddContainerItem(insert_bp, it.id, _c)
			else
				insert_bp = doAddContainerItem(insert_bp, container.itemid, 1)
				count = (#items_mod)-(free-1)
				free = getContainerCap(insert_bp) 
				count = math.ceil(count/ free)
				doAddContainerItem(insert_bp, it.id, _c)
				counter = 1
			end
			counter = counter + 1
		else
			doAddContainerItem(insert_bp, it.id, _c)
		end
	end

	return main_bp
end

-----------------
----Item Ids-----
-----------------
----------EQUIPMENT----------
Cfcrown = 2128
Cfsteelhelmet = 2457
Cfchainhelmet = 2458
Cfironhelmet = 2459
Cfbrasshelmet = 2460
Cfleatherhelmet = 2461
Cfdevilhelmet = 2462
Cfgoldenhelmet = 2471
Cfvikinghelmet = 2473
Cfwingedhelmet = 2474
Cfwarriorhelmet = 2475
Cfstrangehelmet = 2479
Cflegionhelmet = 2480
Cfsoldierhelmet = 2480
Cfstuddedhelmet = 2482
Cfdarkhelmet = 2490
Cfcrownhelmet = 2491
Cfdemonhelmet = 2493
Cfhornedhelmet = 2496
Cfcrusaderhelmet = 2497
Cfroyalhelmet = 2498
Cfamazonhelmet = 2499
Cfceremonialmask = 2501
Cfdwarvenhelmet = 2502
Cfdragonscalehelmet = 2506
Cfhatofthemad = 2323
Cfmagicianhat = 2662
Cfmysticturban = 2663
Cfpostofficershat = 2665
Cftribalmask = 3967
Cfhorsemanhelmet = 3969
Cffeatherheaddress = 3970
Cfcharmertiara = 3971
Cfbeholderhelmet = 3972
Cfplatearmor = 2463
Cfchainarmor = 2464
Cfbrassarmor = 2465
Cfgoldenarmor = 2466
Cfleatherarmor = 2467
Cfmagicplatearmor = 2472
Cfknightarmor = 2476
Cfscalearmor = 2483
Cfstuddedarmor = 2484
Cfdoublet = 2485
Cfnoblearmor = 2486
Cfcrownarmor = 2487
Cfdarkarmor = 2489
Cfdragonscalemail = 2492
Cfdemonarmor = 2494
Cfamazonarmor = 2500
Cfdwarvenarmor = 2503
Cfnativearmor = 2508
Cfjacket = 2650
Cfcoat = 2651
Cfgreentunic = 2652
Cftunic = 2652
Cfredtunic = 2653
Cfcape = 2654
Cfredrobe = 2655
Cfbluerobe = 2656
Cfsimpledress = 2657
Cfwhitefress = 2658
Cfballgrown = 2659
Cfhiddenturbant = 2660
Cfleopardarmor = 3968
Cfstuddedlegs = 2468
Cfdragonscalelegs = 2469
Cfgoldenlegs = 2470
Cfknightlegs = 2477
Cfbrasslegs = 2478
Cfcrownlegs = 2488
Cfdemonlegs = 2495
Cfdwarvenlegs = 2504
Cfgreenlegs = 2507
Cfplatelegs = 2647
Cfchainlegs = 2648
Cfleatherlegs = 2649
Cfbootsofhaste = 2195
Cfsoftboots = 6132
Cfpairofsoftboots = 6132
Cfwornsoftboots = 6530
Cfleatherboots = 2643
Cfbunnyslippers = 2644
Cfsteelboots = 2645
Cfgoldenboots = 2646
Cfcrocodileboots = 3982
Cfsandals = 2642

----------SHIELDS----------
Cfsteelshield = 2509
Cfplateshield = 2510
Cfbrassshield = 2511
Cfwoodenshield = 2512
Cfbattleshield = 2513
Cfmastermindshield = 2514
Cfguardianshield = 2515
Cfdragonshield = 2516
Cfshieldofhonour = 2517
Cfbeholdershield = 2518
Cfcrownshield = 2519
Cfdemonshield = 2520
Cfdarkshield = 2521
Cfgreatshield = 2522
Cfblessedshield = 2523
Cfornamentedshield = 2524
Cfdwarvenshield = 2525
Cfstuddedshield = 2526
Cfroseshield = 2527
Cftowershield = 2528
Cfblackshield = 2529
Cfcoppershield = 2530
Cfvikingshield = 2531
Cfacientshield = 2532
Cfgriffinshield = 2533
Cfvampireshield = 2534
Cfcastleshield = 2535
Cfmedusashield = 2536
Cfamazonshield = 2537
Cfeagleshield = 2538
Cfphoeixshield = 2539
Cfscarabshield = 2540
Cfboneshield = 2541
Cftempestshield = 2542
Cftuskshield = 3973
Cfsentinelshield = 3974
Cfsalamandershield = 3975

----------WEAPONS----------
Cfsword = 2376
Cftwohandedsword = 2377
Cfdagger = 2379
Cfspikesword = 2383
Cfrapier = 2384
Cfsabre = 2385
Cfmagiclongsword = 2390
Cffiresword = 2392
Cfgiantsword = 2393
Cfcarlinsword = 2395
Cficerapier = 2396
Cflongsword = 2397
Cfmagicsword = 2400
Cfsilverdagger = 2402
Cfweaponknife = 2403
Cfcombatknife = 2404
Cfsickle = 2405
Cfshortsword = 2406
Cfbrightsword = 2407
Cfserpentsword = 2409
Cfpoisondagger = 2411
Cfkatana = 2412
Cfbroadsword = 2413
Cfgoldensickle = 2418
Cfscimitar = 2419
Cfmachete = 2420
Cfheavymachete = 2442
Cfepee = 2438
Cfbonesword = 2450
Cfdjinnblade = 2451
Cfclub = 2382
Cfwarhammer = 2391
Cfmorningstar = 2394
Cfmace = 2398
Cfstaff = 2401
Cfcrowbar = 2416
Cfbattlehammer = 2417
Cfgiantsmithhammer = 2321
Cfthunderhammer = 2421
Cfironhammer = 2422
Cfclericalmace = 2423
Cfsilvermace = 2424
Cfdragonhammer = 2434
Cfskullstaff = 2436
Cfgoldenmace = 2437
Cfdaramanianmace = 2439
Cfcrystalmace = 2445
Cfstuddedclub = 2448
Cfboneclub = 2449
Cfarcanestaff = 2453
Cfavanger = 6528
Cflichstaff = 3961
Cfbananastaff = 3966
Cfbattleaxe = 2378
Cfhandaxe = 2380
Cfhalberd = 2381
Cfaxe = 2386
Cfdoubleaxe = 2387
Cfarbalest = 5803
Cfhatchet = 2388
Cfdragonlance = 2414
Cfgreataxe = 2415
Cfobsidianlance = 2425
Cfnaginata = 2426
Cfguardianhalberd = 2427
Cforchishaxe = 2428
Cfbarbarianaxe = 2429
Cfknightaxe = 2430
Cfstonecutteraxe = 2431
Cffireaxe = 2432
Cfdwarvenaxe = 2435
Cfdaramanianwaraxe = 2440
Cfdaramanianaxe = 2441
Cfwaraxe = 2454
Cfbeastslayeraxe = 3962
Cfspear = 2389
Cfcrossbow = 2455
Cfbow = 2456
Cfcrystalarrow = 2352
Cfthrowingknife = 2410
Cfbolt = 2543
Cfarrow = 2544
Cfpoisonarrow = 2545
Cfburstarrow = 2546
Cfpowerbolt = 2547
Cfthrowingstar = 2399
Cfcrystalwand = 2184
Cfgreenspellwand = 2188
Cfyellowspellwand = 2189
Cfbluespellwand = 2190
Cfredspellwand = 2191
Cfsnowball = 2111
Cfsmallstone = 1294
----------AMULETS----------
Cfscarf = 2661
Cfstrangetalisman = 2161
Cfsilveramulet = 2170
Cfplatinumamulet = 2171
Cfbronzeamulet = 2172
Cfamuletofloss = 2173
Cfstrangesymbol = 2174
Cfbrokenamulet = 2196
Cfstoneskinamulet = 2197
Cfelvenamulet = 2198
Cfgarlicnecklace = 2199
Cfprotectionamulet = 2200
Cfdragonnecklace = 2201
Cfpawamulet = 2218
Cfcrystalnecklace = 2125
Cfbronzennecklace = 2126
Cfwolftoothchain = 2129
Cfgoldenamulet = 2130
Cfstaramulet = 2131
Cfsilvernecklace = 2132
Cfrubynecklace = 2133
Cfscarabamulet = 2135
Cfdemonboneamulet = 2135
Cfstarlight = 2138
Cfacientamulet = 2142

----------RINGS----------
Cfswordring = 2207
Cfaxering = 2208
Cfclubring = 2209
Cfdwarvenring = 2213
Cfringofhealing = 2214
Cfweddingring = 2121
Cfelvenbrooch = 2122
Cfringofthesky = 2123
Cfcrystalring = 2124
Cfemeraldbangle = 2127
Cfmightring = 2164
Cfstealthring = 2165
Cfpowerring = 2166
Cfenergyring = 2167
Cflifering = 2168
Cftimering = 2169
Cfgoldring = 2179
Cflifecrystal = 2177

----------JEWLS----------
Cfsilverbrooch = 2134
Cfexplorerbrooch = 4873
Cfegipcianamulet = 2139
Cfholyscarab = 2140
Cfholyfalcon = 2142
Cfwhitepearl = 2143
Cfblackpearl = 2144
Cfsmalldiamond = 2145
Cfsmallsapphire = 2146
Cfsmallruby= 2147
Cfgoldcoin = 2148
Cfsmallemerald = 2149
Cfsmallamethyst = 2150
Cftalon = 2151
Cfplatinumcoin = 2152
Cfvioletgem = 2153
Cfyellowgem= 2154
Cfgreengem = 2155
Cfredgem = 2156
Cfpremiumcoin = 2157
Cfbluegem = 2158
Cfscarabcoin = 2159
Cfcrystalcoin = 2160

----------TOOLS----------
Cfrope = 2120
Cfmagiclightwand = 2162
Cfpitchfork = 2548
Cfrake = 2549
Cfscythe = 2550
Cfbroom = 2551
Cfwitchesbroom = 2324
Cfhoe = 2552
Cfpick = 2553
Cfshovel = 2554
Cfwoodenhammer = 2556
Cfcarpenterhammer = 2557
Cfsaw = 2558
Cfsmallaxe = 2559
Cfmirror = 2560
Cfbakingtray = 2561
Cfpot = 2562
Cfpan = 2563
Cffork = 2564
Cfspood = 2565
Cfknife = 2566
Cfwoodenspoon = 2567
Cfcleaver = 2568
Cfovenspatula = 2569
Cfspatula = 2569
Cfrollinpin = 2570
Cfgreybowl = 2571
Cfgreenbowl = 2573
Cfyellowbowl = 2573
Cfwhitevase = 2574
Cfyellowvase = 2575
Cfbluevase = 2576
Cfgreenvase = 2577
Cftrap = 2578
Cfclosedtrap = 2578
Cfopentrap = 2579
Cffishingrod = 2580
Cfvase = 2008
Cfspoon = 2565
----------RUNES----------
Cfblankrune = 2260
Cfdestroyfieldrune = 2261
Cfenergybombrune = 2262
Cfintensehealingrune = 2265
Cfantidoterune = 2266
Cfsuddendeathrune = 2268
Cfultimatehealingrune = 2273
Cfenergyfieldrune = 2277
Cfparalyzerune = 2278
Cfenergywallrune = 2279
Cfpoisonfieldrune = 2285
Cfpoisonbombrune = 2286
Cflightmagicmissilerune = 2287
Cfpoisonwallrune = 2289
Cfconvincecreaturerune = 2290
Cfchameleonrune = 2291
Cfmagicwallrune = 2293
Cffirefieldrune = 2301
Cffireballrune = 2302
Cffirewallrune = 2303
Cfgreatfireballrune = 2304
Cffirebombrune = 2305
Cfsoulfirerune = 2308
desintegraterune = 2310
Cfheavymagicmissilerune = 2311
Cfexplosionrune = 2313
Cfanimatedeadrune = 2316

----------CONTAINERS----------
Cfbag = 1987
Cfbackpack = 1988
Cfbasket = 1989
Cfpresent = 1990
Cfgreenbag = 1991
Cfyellowbag = 1992
Cfredbag = 1993
Cfpurplebag = 1994
Cfbluebag = 1995
Cfgreybag = 1996
Cfgoldenbag = 1997
Cfgreenbackpack = 1998
Cfyellowbackpack = 1999
Cfredbackpack = 2000
Cfpurplebackpack = 2001
Cfbluebackpack = 2002
Cfgreybackpack = 2003
Cfgoldenbackpack = 2004
Cfcamouflagebackpack = 3940
Cfcamouflagebag = 3939
Cfparcel = 2595
Cffurbackpack = 7342
Cffurbag = 7343

----------FURNITURE----------
Cfwoodenchair = 3901
Cfsofachair = 3902
Cfredcushionedchair = 3903
Cfgreencushionedchair = 3904
Cftuskchair = 3905
Cfivorychair = 3906
Cfbigtable = 3909
Cfsquaretable = 3910
Cfsmallroundtable = 3911
Cfsmalltable = 3912
Cfstonetable = 3913
Cftusktable = 3914
Cfharp = 3917
Cfpiano = 3926
Cfbambootable = 3919
Cfwoodendrawer = 3921
Cfdresser = 3932
Cflocker = 3934
Cfbamboodrawer = 3936
Cflargetrunk = 3938
Cfpottedflower = 3928
Cfindoorplant = 3929
Cfflowerbowl = 2102
Cfhoneyflower = 2103
Cfchristmastree = 3931
Cfpurplepillow = 1678
Cfgreenpillow = 1679
Cfredpillow = 1680
Cfbluepillow = 1681
Cforangepillow = 1682
Cfturqoisepillow = 1683
Cfwhitepillow = 1684
Cfheartpillow = 1685
Cfbluesquarepillow = 1686
Cfredsquarepillow = 1687
Cfgreensquarepillow = 1688
Cfyellowsquarepillow = 1689
Cfblueroundpillow = 1690
Cfredroundpillow = 1691
Cfpurpleroundpillow = 1692
Cfturqoiseroundpillow = 1693
Cfpurpletapestry = 1857
Cfgreentapestry = 1860
Cfyellowtapestry = 1863
Cforangetapestry = 1866
Cfredtapestry = 1869
Cfbluetapestry = 1872
Cfwhitetapestry = 1880
Cfcoalbasin = 3908
Cfbirdcage = 3918
Cfglobe = 3927
Cfpendulumclock = 3933
Cftablelamp = 3937
Cftrough = 3935
Cfcuckooclock = 1873

----------FOOD----------
Cfmeat = 2666
Cffish = 2667
Cfsalmon = 2668
Cfnorthernpike = 2669
Cfshrimp = 2670
Cfham = 2671
Cfdragonham = 2672
Cfpear = 2673
Cfredapple = 2674
Cfapple = 2674
Cforange = 2675
Cfbanana = 2676
Cfblueberry = 2677
Cfcoconut = 2678
Cfcherry = 2679
Cfstrawberry = 2680
Cfgrapes = 2681
Cfgrape = 2681
Cfmelon = 2682
Cfpumpkin = 2683
Cfcarrot = 2684
Cftomato = 2685
Cfcorncob = 2686
Cfcookie = 2687
Cfcandycane = 2688
Cfbread = 2689
Cfroll = 2690
Cfbrownbread = 2691
Cfflour = 2692
Cflumpofdough = 2693
Cfdough = 2693
Cfbunchofweat = 2694
Cfwheat = 2694
Cfegg = 2695
Cfcheese = 2696
Cfwhitemushroom = 2787
Cfredmushroom = 2788
Cfbrownmushroom = 2789
Cfornagemushroom = 2790
Cfwoodmushroom = 2791
Cfdarkmushroom = 2792
Cfmushrooms = 2793
Cffiremushroom = 2795

----------WRITBLES----------
Cfletter = 2597
Cflabel = 2599
Cfspellbook = 2175

----------OTHERS----------
Cfworm = 3976
Cfvial = 2006
Cfcup = 2013
Cfmug = 2012
Cfplate = 2035
Cfjug = 2014
Cftorch = 2050
Cfcandelabrum = 2041
Cfcandlestick = 2047
Cfscroll = 1949
Cfdocument = 1952
Cfparchment = 1948
Cfwaterskin = 2031
Cfwaterhose = 2031
Cfamphora = 2023
Cfblueamphora = 2011
Cflargeamphora = 2034
Cfdeadrat = 2813
Cflamp = 2044
Cffootball = 2109
Cfinkwell = 2600
Cfrollingpin = 2570
Cfflute = 2070
Cfwoodenflute = 2374
Cfwarhorn = 3957
Cfsimplefanfare = 2075
Cfroyalfanfare = 2077
Cfposthorn = 2078
Cfpanpipes = 2074
Cflyre = 2071
Cflute = 2072
Cfhornofsundering = 2371
Cffanfare = 2076
Cfdrum = 2073
Cfdidgeridoo = 3952
Cfcornucopia = 2369
Cfbottle = 2007
Cftemplarscytheblade = 3963
Cfripperlance = 3964
Cfhuntingspear = 3965
Cfblackbook = 1955
Cfbrownbook = 1971
Cfgreysmallbook = 1958
Cfsmallbook = 1973
Cfbluebook = 1963
Cfbluetome = 1984
Cfredtome = 1986
Cfgreentome = 1983
Cfbrownsquarebook = 1975
Cfbrownthinbook = 1974
Cfcookbook = 2347
Cffatgreenbook = 1981
Cfgemmedbook = 1974
Cfgreenbook = 1965
Cfgreytome = 1985
Cfholytible = 1974
Cforangebook = 1962
Cfpurpletome = 1982
Cfredsquarebook = 1961
Cffern = 2801
Cfstarherb = 2800
Cfstoneherb = 2799
Cfbloodherb = 2798
Cftulip = 2754
Cfredrose = 2744
Cfrose = 2744
Cfbluerose = 2745
Cfyellowrose = 2746
Cfcrystallball = 2192
Cfmindstone = 2178
Cfelephanttusks = 3956
Cftusk = 3956
Cfwaterpipe = 2093
Cfbarrel = 5086
Cfpurplekey = 2086
Cfwoodenkey = 2087
Cfsilverkey = 2088
Cfcopperkey = 2089
Cfcrystalkey = 2090
Cfgoldenkey = 2091
Cfbonekey = 2092
Cfhydraegg = 4850
Cfphoenixegg = 2328
Cfwornleatherboots = 2238
Cfwoodendoll = 2108
Cfbone = 2230
Cfskull = 2229
Cfankh = 2193
Cfmysteriousfetish = 2194
Cfvoodoodoll = 3955
Cfwatch = 2036
Cfancientshield = 2532
Cfpiggybank = 2114
Cftheholytible = 1970

----------Destination Boat----------
Boatthais = {x=32312, y=32211, z=7}
Boatcarlin = {x=32387, y=31821, z=7}
Boatabdendriel = {x=32733, y=31668, z=7}
Boatvenore = {x=32956, y=32023, z=7}
Boatedron = {x=33177, y=31764, z=7}
Boatdarashia = {x=33290, y=32479, z=7}
Boatghostship = {x=33315, y=32173, z=6}
Boatankrahmun = {x=33091, y=32884, z=7}
Boatporthope = {x=32530, y=32784, z=7}
Boatcormaya = {x=33288, y=31956, z=7}
Boateremo = {x=33315, y=31882, z=7}
Boatisleofkings = {x=32188, y=31956, z=7}

----------Destination Steam Boat----------
Ferrysenja = {x=32126, y=31665, z=7}
Ferryfolda = {x=32048, y=31582, z=7}
Ferryvega = {x=32025, y=31692, z=7}
Ferrycarlin = {x=32236, y=31675, z=7}

----------Destination Steam Boat----------
Steamcormaya = {x=33309, y=31989, z=15}
Steamkazordoon = {x=32658, y=31957, z=15}

----------Destination Carpet----------
Carpetdarashia = {x=33269, y=32441, z=6}
Carpetedron = {x=33193, y=31784, z=3}
Carpethills = {x=32535, y=31837, z=4}

Cfhammerofwrath = 2444
Cfheavymace = 2452
Cfbucket = 2005
Cfdesintegraterune = 2310


Cfbackpackofholding = 2365
Cffrozenstarlight = 2361


Cfminotaurtrophy = 7401
Cfgoldenmug = 2033
Cfsmalloillamp = 2062
Cfmindstone = 2178