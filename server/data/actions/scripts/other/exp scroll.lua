local poweritem = 1969
local rate = 5

function onUse(cid, item)
if getPlayerStorageValue(cid, 3004) < 6 then
            if doPlayerRemoveItem(cid, poweritem, 1) == 1 then            
				doPlayerAddExp(cid, 500000)
				doPlayerSendTextMessage(cid,22,"You have gain 500 000 Experience!")
				setPlayerStorageValue(cid, 3004, (getPlayerStorageValue(cid, 3004)+1))
			end
else
doPlayerSendTextMessage(cid,22,"You cannot use more experience scrolls on this character!")		
end	
return TRUE
end  