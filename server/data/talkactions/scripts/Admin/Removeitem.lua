function onSay(cid,words,param)
if getPlayerAccess(cid) >= 6 then
position = getPlayerPosition(cid)
if getPlayerLookDir(cid) == 0 then
DELETEPOS = {x = position.x, y = position.y-1, z = position.z}
OBJECTPOS = {x = position.x, y = position.y-1, z = position.z, stackpos=255}
elseif getPlayerLookDir(cid) == 1 then
DELETEPOS = {x = position.x+1, y = position.y, z = position.z}
OBJECTPOS = {x = position.x+1, y = position.y, z = position.z, stackpos=255}
elseif getPlayerLookDir(cid) == 2 then
DELETEPOS = {x = position.x, y = position.y+1, z = position.z}
OBJECTPOS = {x = position.x, y = position.y+1, z = position.z, stackpos=255}
elseif getPlayerLookDir(cid) == 3 then
DELETEPOS = {x = position.x-1, y = position.y, z = position.z}
OBJECTPOS = {x = position.x-1, y = position.y, z = position.z, stackpos=255}
end

if isCreature(DELETEPOS.uid) == TRUE then
doRemoveCreature(DELETEPOS.uid)
else

GETOBJECT = getThingfromPos(OBJECTPOS)
doRemoveItem(GETOBJECT.uid, 1)
BYEPOS = {x=32322, y=31945, z=7}
doRelocate(DELETEPOS, BYEPOS)
doSendMagicEffect(DELETEPOS, 2)
end
end
end