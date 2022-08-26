dofile(getDataDir() .. 'global/items-config.lua')
function onSay(cid,words,param)
---------------------------------
pos = getPlayerPosition(cid)
GMHOUSE = {x=32231, y=32209, z=7}
---------------------------------
	if (getTilePzInfo(pos) == TRUE) then
		if getHouseOwner(getTileHouseInfo(pos)) == getPlayerGUID(cid) then
			if param ~= "" then
			
			LETTER = doCreateItem(2333, 1, GMHOUSE)
			doSetItemSpecialDescription(LETTER, ":".. getPlayerName(cid) ..": to :".. getHouseName(getTileHouseInfo(pos)) ..":")
			doSetItemText(LETTER, "Guest:\n ".. param .."")
			doPlayerSendTextMessage(cid, 22, 'Your invite request have been sent! it will appear a letter with the invation list at your front door when the invation have been completed!')
			else
			doPlayerSendTextMessage(cid, 20, 'You can request to make players invited to your house by use {aleta sio "PLAYERNAME}. "aleta sio" = invite, they can\'t open doors. "aleta som" = subowner, they can do everything you can except request invations. Your invate request can look like this:')
			doPlayerSendTextMessage(cid, 16, 'aleta sio"The Dark Rider, Mad Magican, Albert')
			doPlayerSendTextMessage(cid, 16, 'Write the name carefully and exact! if the name is "Albert" don\'t write "albert"')
			end
		end
	end
end
