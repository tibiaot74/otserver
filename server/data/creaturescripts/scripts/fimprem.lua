function onLogin(cid)
local temple = { x =32369, y = 32241, z = 7}
if isPremium(cid) == true then
if getPlayerStorageValue(cid,55855) ~= 1 then
setPlayerStorageValue(cid,55855,1)
end
else
if getPlayerStorageValue(cid,55855) == 1 then
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doPlayerSendTextMessage(cid, 22, "Your Premium Time over!")
setPlayerStorageValue(cid, 55855, 0)
end
end
return true
end