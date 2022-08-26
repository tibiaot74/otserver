function onUse(cid, item, itemEx, toPosition)
 
local pos = getCreaturePosition(cid)
if (getTilePzInfo(getPlayerPosition(cid)) == TRUE) then
if(getPlayerStorageValue(cid, 4523987) == 1) then
doPlayerSendTextMessage(cid, 22, "You already have permission to use the Avar Tar!")
else
doRemoveItem(item.uid, 1)
setPlayerStorageValue(cid, 4523987, 1)
doPlayerSendTextMessage(cid, 22, "You just received permission to use the Avar Tar!")
end
else
doPlayerSendTextMessage(cid, 22, "You can only use this item inside protection zone!")
end
return true
end