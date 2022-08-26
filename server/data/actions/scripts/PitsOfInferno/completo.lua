function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,9999) == 1 then
doTransformItem(item.uid, item.itemid+1)
else
doPlayerSendTextMessage(cid,22,"You did not complete The Pits of Inferno Quest.")
end
return true
end