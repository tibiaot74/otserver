function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.actionid >= 42361 and item.actionid <= 42365 and getPlayerStorageValue(cid, 42361) ~= 1 then
		local reward = 0
		if item.actionid == 42361 then
			reward = doCreateItemEx(1990,1)
			rewardmsg = "You have found a present!"
			doAddContainerItem(reward, 7372, 1)
			doAddContainerItem(reward, 6569, 10)
			doAddContainerItem(reward, 6574, 1)
			doAddContainerItem(reward, 2114, 1)
		elseif item.actionid == 42362 then
			reward = doCreateItemEx(7406,1)
			rewardmsg = "You have found a blacksteel sword!"
		elseif item.actionid == 42363 then
			reward = doCreateItemEx(7380,1)
			rewardmsg = "You have found a headchopper!"
		elseif item.actionid == 42364 then
			reward = doCreateItemEx(7392,1)
			rewardmsg = "You have found a orcish maul!"
		elseif item.actionid == 42365 then
			reward = doCreateItemEx(7342,1)
			doAddContainerItem(reward, 7365, 100)
			doAddContainerItem(reward, 7364, 100)
			rewardmsg = "You have found a backpack!"
		end
		if doPlayerAddItemEx(cid, reward, 0) == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,22,rewardmsg)
			setPlayerStorageValue(cid, 42361, 1)
			setPlayerStorageValue(cid, 8164, 1)
		else
			doPlayerSendTextMessage(cid,19,'You do not have enough space in the backpack or enough capacity to carry the item.')
		end
	elseif item.actionid >= 42371 and item.actionid <= 42375 and getPlayerStorageValue(cid, 42371) ~= 1 then
		local reward = 0
		if item.actionid == 42371 then
			reward = doCreateItemEx(1990,1)
			doAddContainerItem(reward, 7372, 1)
			doAddContainerItem(reward, 6569, 10)
			doAddContainerItem(reward, 6574, 1)
			doAddContainerItem(reward, 7183, 1)
			rewardmsg = "You have found a present!"
		elseif item.actionid == 42372 then
			reward = doCreateItemEx(7384,1)
			rewardmsg = "You have found a mystic blade!"
		elseif item.actionid == 42373 then
			reward = doCreateItemEx(7389,1)
			rewardmsg = "You have found a heroic axe!"
		elseif item.actionid == 42374 then
			reward = doCreateItemEx(7415,1)
			rewardmsg = "You have found a cranial basher!"
		elseif item.actionid == 42375 then
			reward = doCreateItemEx(7342,1)
			doAddContainerItem(reward, 7365, 100)
			doAddContainerItem(reward, 2547, 100)
			doAddContainerItem(reward, 2547, 100)
			doAddContainerItem(reward, 2311, 50)
			doAddContainerItem(reward, 2304, 50)
			rewardmsg = "You have found a backpack!"
		end
		if doPlayerAddItemEx(cid, reward, 0) == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,22,rewardmsg)
			setPlayerStorageValue(cid, 42371, 1)
			setPlayerStorageValue(cid, 8165, 1)
		else
			doPlayerSendTextMessage(cid,19,'You do not have enough space in the backpack or enough capacity to carry the item.')
		end
	elseif item.actionid >= 42381 and item.actionid <= 42385 and getPlayerStorageValue(cid, 42381) ~= 1 then
		local reward = 0
		if item.actionid == 42381 then
			reward = doCreateItemEx(1990,1)
			doAddContainerItem(reward, 7372, 1)
			doAddContainerItem(reward, 6569, 10)
			doAddContainerItem(reward, 6574, 1)
			doAddContainerItem(reward, 6568, 1)
			rewardmsg = "You have found a present!"
		elseif item.actionid == 42382 then
			reward = doCreateItemEx(7429,1)
			rewardmsg = "You have found a blessed sceptre!"
		elseif item.actionid == 42383 then
			reward = doCreateItemEx(7434,1)
			rewardmsg = "You have found a royal axe!"
		elseif item.actionid == 42384 then
			reward = doCreateItemEx(7390,1)
			rewardmsg = "You have found a justice seeker!"
		elseif item.actionid == 42385 then
			reward = doCreateItemEx(7342,1)
			doAddContainerItem(reward, 2273, 50)
			doAddContainerItem(reward, 2268, 50)
			doAddContainerItem(reward, 7443, 1)
			doAddContainerItem(reward, 7440, 1)
			doAddContainerItem(reward, 6529, 100)
			rewardmsg = "You have found a backpack!"
		end
		if doPlayerAddItemEx(cid, reward, 0) == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,22,rewardmsg)
			setPlayerStorageValue(cid, 42381, 1)
			setPlayerStorageValue(cid, 8166, 1)
		else
			doPlayerSendTextMessage(cid,19,'You do not have enough space in the backpack or enough capacity to carry the item.')
		end
	else
	doPlayerSendTextMessage(cid,22,"It's empty!")	
	end
	return TRUE
end