function onUse(cid, item, fromPosition, itemEx, toPosition)
if(itemEx.actionid == 7815) then
		if(getPlayerStorageValue(cid, 250) == 3) then
			doSendMagicEffect(fromPosition, CONST_ME_SOUND_GREEN)
			setPlayerStorageValue(cid, 250, 4)
		end
	elseif(itemEx.uid == 3074) then
		if(getPlayerStorageValue(cid, 29) < 1) then
			doSetMonsterOutfit(cid, "bog raider", 5 * 1000)
			doSendMagicEffect(fromPosition, CONST_ME_SOUND_GREEN)
			setPlayerStorageValue(cid, 29, 1)
		end
	end
	return true
end