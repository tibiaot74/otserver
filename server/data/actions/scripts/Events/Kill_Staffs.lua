local gifts = {
--AVG Worth/Item 100 Gp
        {2, Cfknightlegs, 1},
		{200, Cfbrasslegs, 1},
		{1, Cfcrownlegs, 1},
		{150, Cfplatelegs, 1},
		{1, Cfbootsofhaste, 1},
		{100, Cfsteelhelmet, 1},
		{50, Cfdevilhelmet, 1},
		{3, Cfwarriorhelmet, 1},
		{10, Cfcrownhelmet, 1},
		{2, Cfknightlegs, 1},
		{100, Cfplatearmor, 1},
		{3, Cfknightarmor, 1},
		{1, Cfcrownarmor, 1},
		{2, Cfbluerobe, 1},
		{300, Cfbrownmushroom, 30},
		{400, Cfscarf, 1},
		{50, Cfplatinumamulet, 1},
		{10, Cfstoneskinamulet, 5},
		{50, Cfringofhealing, 1},
		{100, Cflifering, 1},
		{200, Cfscarabcoin, 1},
		{500, Cfgoldcoin, 50},
		{100, Cfplatinumcoin, 5},
		{1, Cfcrystalcoin, 1},
		{10, Cfsmalldiamond, 3},
		{10, Cfsmallsapphire, 4},
		{10, Cfsmallemerald, 4},
		{50, Cfwarhammer, 1},
		{20, Cfdragonhammer, 1},
		{1, Cfskullstaff, 1},
		{20, Cfknightaxe, 1},
		{1, Cffireaxe, 1},
		{20, Cffiresword, 1},
		{1, Cficerapier, 1},
		{30, Cfguardianshield, 1},
		{30, Cfbeholdershield, 1},
		{10, Cfdragonshield, 1},
		{40, Cfdwarvenshield, 1},
		{1, Cftowershield, 1},
		{900, Cfgoldcoin, 100}
    }
	
function onUse(cid, item, frompos, item2, topos)
if item.actionid == 401 then
	if getPlayerStorageValue(cid,401) <= (os.time()-1*60*60) then
	BAG = doPlayerAddItem(cid, 1993, 1)
		doPlayerSendTextMessage(cid,22,"You have looted the quest event!")
		
        local item = {} 
        local reward = 0
        local count = ""
        for i = 1, #gifts do
            item = gifts[i]
            if (math.random(0,999) < item[1]) then 
                reward = item[2] 
                subType = item[3] 
                if subType > 1 then 
                    count = subType .. " " 
                end 
				doAddContainerItem(BAG, reward, subType)
            end 
        end 
		setPlayerStorageValue(cid,401,(os.time()))
	else
	doPlayerSendTextMessage(cid,22,"You cannot loot this chest anymore.")
	end
else	
  return 0
end
return 1
end

