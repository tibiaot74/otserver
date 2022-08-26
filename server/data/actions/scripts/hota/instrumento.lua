function onUse(cid, item, frompos, item2, topos)
	if item.itemid == 2367 and getPlayerStorageValue(cid,12109) < 1 then
		setPlayerStorageValue(cid,12109,1)
		doSendMagicEffect(frompos, CONST_ME_SOUND_BLUE)
	elseif item.itemid == 2373 and getPlayerStorageValue(cid,12109) == 1 then
		setPlayerStorageValue(cid,12109,2)
		doSendMagicEffect(frompos, CONST_ME_SOUND_BLUE)
	elseif item.itemid == 2370 and getPlayerStorageValue(cid,12109) == 2 then
		setPlayerStorageValue(cid,12109,3)
		doSendMagicEffect(frompos, CONST_ME_SOUND_BLUE)
	elseif item.itemid == 2372 and getPlayerStorageValue(cid,12109) == 3 then
		setPlayerStorageValue(cid,12109,4)
		doSendMagicEffect(frompos, CONST_ME_SOUND_BLUE)
	elseif item.itemid == 2369 and getPlayerStorageValue(cid,12109) == 4 then
		setPlayerStorageValue(cid,12109,5)
		doSendMagicEffect(frompos, CONST_ME_SOUND_BLUE)
		doplayerSendTextMessage(cid,22,"You played them in correct order and got the access through door!")
	else
		setPlayerStorageValue(cid,12109,0)
		doPlayerSendTextMessage(cid,22,"You played them wrong, now you must begin with first again! ")
	end
	return true
end

