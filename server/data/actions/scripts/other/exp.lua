local poweritem = 2056

function onUse(cid, item)
            if doPlayerRemoveItem(cid, poweritem, 1) == 1 then            
            doPlayerSetExperienceRate(cid, 100)
            doPlayerSendTextMessage(cid,19, 'Your extra exprate is now 100x!')
end
return TRUE
end 