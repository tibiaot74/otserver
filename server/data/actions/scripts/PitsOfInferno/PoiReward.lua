function onUse(cid, item, frompos, item2, topos)
if item.actionid == 9999 then
	if getPlayerStorageValue(cid,9999) <= 0 then
		doPlayerSendTextMessage(cid,22,"You have found a arcane staff.")
		doPlayerAddItem(cid, 2453, 1)
		setPlayerStorageValue(cid,9999,1)
    else		
		doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.actionid == 10001 then
	if getPlayerStorageValue(cid,9999) <= 0 then
		doPlayerSendTextMessage(cid,22,"You have found a the avenger.")
		doPlayerAddItem(cid, 5518, 1)
		setPlayerStorageValue(cid,9999,1)
    else		
		doPlayerSendTextMessage(cid,22,"it's empty.")
	end	
elseif item.actionid == 10002 then
	if getPlayerStorageValue(cid,9999) <= 0 then
		doPlayerSendTextMessage(cid,22,"You have found a Arbalest.")
		doPlayerAddItem(cid, 5519, 1)
		setPlayerStorageValue(cid,9999,1)
    else		
		doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.actionid == 10003 then
	if getPlayerStorageValue(cid,10003) <= 0 then
		doPlayerSendTextMessage(cid,22,"You have found a Soft Boots.")
		doPlayerAddItem(cid, 2640, 1)
		setPlayerStorageValue(cid,10003,1)
    else		
		doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.actionid == 10004 then
	if getPlayerStorageValue(cid,10004) <= 0 then
		doPlayerSendTextMessage(cid,22,"You have found 100 Power Bolt.")
		doPlayerAddItem(cid, 2547, 100)
		setPlayerStorageValue(cid,10004,1)
    else		
		doPlayerSendTextMessage(cid,22,"it's empty.")
	end
elseif item.actionid == 10005 then
	if getPlayerStorageValue(cid,10005) <= 0 then
		doPlayerSendTextMessage(cid,22,"You have found a Frozen Starlight.")
		doPlayerAddItem(cid, 2361, 1)
		setPlayerStorageValue(cid,10005,1)
    else		
		doPlayerSendTextMessage(cid,22,"it's empty.")
	end	
end	
return true	
end	