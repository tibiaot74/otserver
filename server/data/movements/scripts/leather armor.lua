function onEquip(cid)
if getPlayerStorageValue(cid, 3005) == 5 then
setPlayerStorageValue(cid,1500,1)
end
end
 
function onDeEquip(cid)
setPlayerStorageValue(cid,1500,0)
end