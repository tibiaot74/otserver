	-- Owner Data
	ownerName = "OldServBR"
	ownerEmail = "mitsuig@xtibia.com"
	url = "http://www.oldserv.com"
	location = "Canada"

	-- Messages
	motd = "Welcome to the OldServ!"
	serverName = "OldServ"
	loginMessage = "Welcome to The OldServ!"
	displayGamemastersWithOnlineCommand = false

	-- MySql
	sqlType = "mysql"
	sqlHost = "127.0.0.1"
	sqlPort = 3306
	sqlUser = "root"
	sqlPass = "Jy1Y3NqUQaH5LvaJ"
	sqlDatabase = "servidor"
	sqlFile = ""
	sqlKeepAlive = 0
	mysqlReadTimeout = 10
	mysqlWriteTimeout = 10
	mysqlReconnectionAttempts = 5
	encryptionType = "sha1" 

	-- World / Ip / Port
	worldId = 0
	ip = "177.128.181.79"
	worldType = "open"
	bindOnlyGlobalAddress = false
	loginPort = 7171
	gamePort = "7172"
	statusPort = 7171
	loginOnlyWithLoginServer = false

	-- Account manager
	accountManager = false
	namelockManager = true
	newPlayerChooseVoc = true
	newPlayerSpawnPosX = 32097
	newPlayerSpawnPosY = 32219
	newPlayerSpawnPosZ = 7
	newPlayerTownId = 2
	newPlayerLevel = 1
	newPlayerMagicLevel = 0
	generateAccountNumber = false
	generateAccountSalt = false

	-- Limits on frags / Time
	fragsLimit = 6 * 60 * 60
	fragsSecondLimit = 6 * 60 * 60
	fragsThirdLimit = 6 * 60 * 60

	-- Red Skull Config
	fragsToRedSkull = 4
	fragsSecondToRedSkull = 28
	fragsThirdToRedSkull = 120
	redSkullLength = 1 * 24 * 60 * 60

	-- Black Skull Config
	fragsToBlackSkull = 6
	fragsSecondToBlackSkull = 10
	fragsThirdToBlackSkull = 20
	blackSkulledDeathHealth = 40
	blackSkulledDeathMana = 0
	blackSkullLength = 6 * 24 * 60 * 60
	useBlackSkull = false

	-- Banishment Config
	-- killsBanLength works only if useBlackSkull option is disabled.
	notationsToBan = 3
	warningsToFinalBan = 4
	warningsToDeletion = 5
	banLength = 1 * 24 * 60 * 60
	killsBanLength = 1 * 24 * 60 * 60
	finalBanLength = 3 * 24 * 60 * 60
	ipBanLength = 1 * 24 * 60 * 60
	fragsToBanishment = 6
    broadcastBanishments = true
	
	-- Battle
	-- NOTE: showHealth/ManaChangeForMonsters inherites from showHealth/ManaChange.
	protectionLevel = 0
	pvpTileIgnoreLevelAndVocationProtection = false
	allowFightback = true
	pzLocked = 60 * 1000
	huntingDuration = 60 * 1000
	criticalHitMultiplier = 1
	displayCriticalHitNotify = false
	removeWeaponAmmunition = true
	removeWeaponCharges = true
	removeRuneCharges = true
	whiteSkullTime = 15 * 60 * 1000
	advancedFragList = false
	useFragHandler = true
	noDamageToSameLookfeet = false
	showHealthChange = false
	showManaChange = false
	showHealthChangeForMonsters = false
	showManaChangeForMonsters = false
	fieldOwnershipDuration = 5 * 1000
	stopAttackingAtExit = true
	loginProtectionPeriod = 1 * 1000
	deathLostPercent = 10
	stairhopDelay = 0 * 1000
	pushCreatureDelay = 0.5 * 1000
	deathContainerId = 1987
	gainExperienceColor = 215
	addManaSpentInPvPZone = true
	recoverManaAfterDeathInPvPZone = true
	squareColor = 0
	-- RSA
	-- NOTE: These should not be changed unless you know what your doing!
	-- Prime1 - known as p; Prime2 - known as q; Public - known as e;
	-- Modulus - known as n; Private - known as d.
	-- How make custom client with custom RSA Key: http://vapus.net/customclient
	rsaPrime1 = "14299623962416399520070177382898895550795403345466153217470516082934737582776038882967213386204600674145392845853859217990626450972452084065728686565928113"
	rsaPrime2 = "7630979195970404721891201847792002125535401292779123937207447574596692788513647179235335529307251350570728407373705564708871762033017096809910315212884101"
	rsaPublic = "65537"
	rsaModulus = "109120132967399429278860960508995541528237502902798129123468757937266291492576446330739696001110603907230888610072655818825358503429057592827629436413108566029093628212635953836686562675849720620786279431090218017681061521755056710823876476444260558147179707119674283982419152118103759076030616683978566631413"
	rsaPrivate = "46730330223584118622160180015036832148732986808519344675210555262940258739805766860224610646919605860206328024326703361630109888417839241959507572247284807035235569619173792292786907845791904955103601652822519121908367187885509270025388641700821735345222087940578381210879116823013776808975766851829020659073"

    -- OTX Server Extras Features
		-- Battle
		optionalWarAttackableAlly = true
		fistBaseAttack = 7
		criticalHitChance = 7
		noDamageToGuildMates = false
			-- if true then no damage, if false then damage
		noDamageToPartyMembers = false
			-- if true then no damage, if false then damage

		-- Rook System
		rookLevelTo = 5
		rookLevelToLeaveRook = 8
		rookTownId = 12
		useRookSystem = true

		-- Paralyze delay
		paralyzeDelay = 1500

		-- GUI
		premiumDaysToAddByGui = 0

		-- Depot and Miscellaneous
		-- set playerFollowExhaust to 2000 if someone causes lags and kicks by following unreachable creatures too often
		useCapacity = true
		defaultDepotSize = 500
		defaultDepotSizePremium = 1000
		enableProtectionQuestForGM = true
		cleanItemsInMap = true
		playerFollowExhaust = 2000

		-- 8.7x + config
		monsterSpawnWalkback = true
		allowBlockSpawn = true
		classicEquipmentSlots = true

		-- Summons and monsters
		NoShareExpSummonMonster = true

		-- Others
		enableLootBagDisplay = false
		attackImmediatelyAfterLoggingIn = false
		exhaustionNPC = true
		exhaustionInSecondsNPC = 0.5

		-- Old Configs
		tileHeightBlock = true
		useStamina = true
		autoStack = true
		runesHitTopCreature = false
		charlistBasicInfo = true
		classicDamageOnWeapons = true
		
		-- ConfigSpells
		noAttackHealingSimultaneus = true
		enableCooldowns = true

	-- Connection config
	loginTries = 20
	retryTimeout = 5 * 1000
	loginTimeout = 60 * 1000
	maxPlayers = 500
	displayOnOrOffAtCharlist = false
	onePlayerOnlinePerAccount = true
	allowClones = 0
	statusTimeout = 1000
	replaceKickOnLogin = true
	forceSlowConnectionsToDisconnect = false
	premiumPlayerSkipWaitList = true
	packetsPerSecond = 50

	-- Deathlist
	deathListEnabled = true
	deathListRequiredTime = 0 * 60 * 1000
	deathAssistCount = 2
	maxDeathRecords = 2
	multipleNames = false

	-- Guilds
	-- NOTE: externalGuildWarsManagement supports Automatic Account Creator(webpage or whatever you want)
	externalGuildWarsManagement = false
	ingameGuildManagement = false
	levelToFormGuild = 20
	premiumDaysToFormGuild = 7
	guildNameMinLength = 4
	guildNameMaxLength = 20

	-- Houses
	buyableAndSellableHouses = true
	houseNeedPremium = true
	bedsRequirePremium = true
	levelToBuyHouse = 20
	housesPerAccount = 1
	houseRentAsPrice = false
	housePriceAsRent = false
	housePriceEachSquare = 350
	houseRentPeriod = "weekly"
	houseCleanOld = 7 * 24 * 60 * 60
	guildHalls = true
	houseSkipInitialRent = true
	houseProtection = true

	-- Item usage
	timeBetweenActions = 200
	timeBetweenExActions = 500
	timeBetweenCustomActions = 500
	checkCorpseOwner = false
	maximumDoorLevel = 999
	tradeLimit = 100
	canOnlyRopePlayers = false

	-- Map
	-- NOTE: storeTrash costs more memory, but will perform alot faster cleaning.
	-- houseDataStorage usage may be found at how-use-internal-functions.log
	mapAuthor = "Mattyx14"
	randomizeTiles = true
	houseDataStorage = "binary-tilebased"
	storeTrash = true
	cleanProtectedZones = true
	mapName = "world.otbm"

	-- Mailbox
	mailMaxAttempts = 5
	mailBlockPeriod = 30 * 60 * 1000
	mailAttemptsFadeTime = 5 * 60 * 1000
	mailboxDisabledTowns = "12"
		-- Example disable rook depot (temple) "4"
		-- mailboxDisabledTowns = "4"

	-- Startup
	-- For Linux use "-1" is default
	-- daemonize works only on *nix, same as niceLevel
	daemonize = false
	defaultPriority = "higher"
	niceLevel = 5
	serviceThreads = 1
	coresUsed = "-1" 
	startupDatabaseOptimization = true
	removePremiumOnInit = true
	confirmOutdatedVersion = false
	skipItemsVersionCheck = false

	-- Muted buffer
	maxMessageBuffer = 0

	-- Miscellaneous
	dataDirectory = "data/"
	logsDirectory = "data/logs/"
	disableOutfitsForPrivilegedPlayers = false
	bankSystem = true
	spellNameInsteadOfWords = false
	emoteSpells = false
	unifiedSpells = true
	promptExceptionTracerErrorBox = true
	storePlayerDirection = false
	savePlayerData = true
	monsterLootMessage = 0
	monsterLootMessageType = 22
	separateViplistPerCharacter = false
	vipListDefaultLimit = 20
	vipListDefaultPremiumLimit = 100

	-- Outfits
	allowChangeOutfit = true
	allowChangeColors = true
	allowChangeAddons = true
	addonsOnlyPremium = true

	-- Ghost mode
	ghostModeInvisibleEffect = true
	ghostModeSpellEffects = true

	-- Limits
	idleWarningTime = 14 * 60 * 1000
	idleKickTime = 15 * 60 * 1000
	expireReportsAfterReads = 1
	playerQueryDeepness = -1
	protectionTileLimit = 80
	houseTileLimit = 50
	tileLimit = 80

	-- Premium-related
	freePremium = false
	premiumForPromotion = false
	updatePremiumStateAtStartup = true

	-- Blessings
	blessings = true
	blessingOnlyPremium = false
	blessingReductionBase = 30
	blessingReductionDecrement = 5
	eachBlessReduction = 8
	useFairfightReduction = true
	pvpBlessingThreshold = 40
	fairFightTimeRange = 60

	-- Rates
	experienceStages = true
	rateExperience = 100.0
	rateExperienceFromPlayers = 0
	levelToOfflineTraining = 8
	rateSkill = 1.5
	rateSkillOffline = 0.5
	rateMagic = 2.0
	rateMagicOffline = 0.5
	rateLoot = 2.0
	rateSpawnMin = 8
	rateSpawnMax = 10
	formulaLevel = 5.0
	formulaMagic = 1.0
		-- Monster rates
		rateMonsterHealth = 1.0
		rateMonsterMana = 1.0
		rateMonsterAttack = 0.9
		rateMonsterDefense = 1.0

	-- Experience from players
	minLevelThresholdForKilledPlayer = 0.9
	maxLevelThresholdForKilledPlayer = 1.1

	-- Stamina System
	rateStaminaLoss = 0
	rateStaminaGain = 3
	rateStaminaThresholdGain = 12
	staminaRatingLimitTop = 40 * 60
	staminaRatingLimitBottom = 14 * 60
	staminaLootLimit = 14 * 60
	rateStaminaAboveNormal = 1.1
	rateStaminaUnderNormal = 1.1
	staminaThresholdOnlyPremium = true

	-- Party System
	experienceShareRadiusX = 30
	experienceShareRadiusY = 30
	experienceShareRadiusZ = 1
	experienceShareLevelDifference = 2 / 3
	extraPartyExperienceLimit = 10
	extraPartyExperiencePercent = 10
	experienceShareActivity = 2 * 60 * 1000

	-- Global save
	globalSaveEnabled = false
	globalSaveHour = 8
	globalSaveMinute = 0
	shutdownAtGlobalSave = true
	cleanMapAtGlobalSave = false

	-- Spawns
	minRateSpawn = 1
	maxRateSpawn = 1
	deSpawnRange = 2
	deSpawnRadius = 999999

	-- Summons
	maxPlayerSummons = 2
	teleportAllSummons = false
	teleportPlayerSummons = false

	-- Logs
	disableLuaErrors = false
	adminLogs = true
	displayPlayersLogging = true
	prefixChannelLogs = ""
	runFile = "server/run.log"
	outputLog = "server/out.log"
	truncateLogOnStartup = false
	logPlayersStatements = false

	-- Manager
	-- NOTE: managerPassword left blank disables manager.
	managerPort = 7171
	managerLogs = true
	managerPassword = ""
	managerLocalhostOnly = true
	managerConnectionsLimit = 1

	-- Admin
	-- NOTE: adminPassword left blank disables manager.
	-- Set to anything if you set adminRequireLogin to false.
	-- adminEncryption available options: rsa1024xtea;
	-- remember to set correct data!
	adminPort = 7171
	adminPassword = ""
	adminLocalhostOnly = true
	adminConnectionsLimit = 1
	adminRequireLogin = true
	adminEncryption = ""
	adminEncryptionData = ""

	-- Don't edit use at your own risk
	saveGlobalStorage = false
	bufferMutedOnSpellFailure = false
