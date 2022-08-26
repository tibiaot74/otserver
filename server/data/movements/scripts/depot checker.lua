function onStepIn(cid, item, pos)
if isPlayer(cid) == TRUE then
		actionid = 101
		if item.actionid > 100 and item.actionid < 125 then
			actionid = item.actionid
		end
		if actionid > 100 then
			if isPlayer(cid) == TRUE then
				if (getTilePzInfo(pos) == TRUE) then
				depotitems = getPlayerDepotItems(cid, actionid - 100)
            
					if depotitems == 1 then
					doPlayerSendTextMessage(cid, 20, 'Your depot contains 1 item.')
					else
					doPlayerSendTextMessage(cid, 20, 'Your depot contains '.. depotitems ..' items.')
					end
				end
			end	
		end
   
end
end


