function onUse(cid, item, fromPosition, itemEx, toPosition)

local onePerQuest = true
local level = 120
local positions =
{
kick = { x = 32716, y = 32340, z = 7 },
summon =
{
{x=32712, y=32349, z=7},
{x=32721, y=32348, z=7},
{x=32712, y=32353, z=7},
{x=32721, y=32354, z=7}
}
}

local summons =
{
[1] = {"Demon", "Lost Soul", "Diabolic Imp", "Demon Skeleton"},
[2] = {"Dark Torturer", "Demon", "Diabolic Imp", "Giant Spider"},
[3] = {"Diabolic Imp", "Braindeath", "Giant Spider", "Demon"},
[4] = {"Hand of Cursed Fate", "Lich", "Diabolic Imp", "Demon"},
[5] = {"Diabolic Imp", "Demon", "Giant Spider", "Diabolic Imp"},
[6] = {"Demon Skeleton", "Banshee", "Hand of Cursed Fate", "Bonebeast"},
[7] = {"Diabolic Imp", "Undead Dragon", "Demon", "Lich"},
[8] = {"Diabolic Imp", "Betrayed Wraith", "Demon Skeleton", "Demon"},
[9] = {"Demon", "Banshee", "Blightwalker", "Demon Skeleton"},
[10] = {"Lost Soul", "Demon", "Diabolic Imp", "Giant Spider"},
[11] = {"Banshee", "Lost Soul", "Hand of Cursed fate", "Demon"}
}

local areaPosition =
{
{x=32706, y=32346, z=7, stackpos = 255},
{x=32726, y=32358, z=7, stackpos = 255}
}

local demonOak = {5099, 5101, 5100, 5098}

local storages =
{
done = 35700,
task = 800223,
cutTree = 36901
}

local blockingTree =
{
[2709] = {32193, 2709}
}

if blockingTree[itemEx.itemid] and itemEx.uid == blockingTree[itemEx.itemid][1] then

if getPlayerStorageValue(cid, storages.task) < 1 then
doPlayerSendCancel(cid, "you have not completed the task of demons.")
return true
end

local tree = toPosition
if isInRange(tree, areaPosition[1], areaPosition[2]) then
print("[Warning - Error::Demon Oak] Dead tree position is inside the quest area positions.\nDead tree position (x: " .. tree.x .. ", y: " .. tree.y .. ", z: " .. tree.z .. ")\nNorth-West area position (x: " .. areaPosition[1].x .. ", y: " .. areaPosition[1].y .. ", z: " .. areaPosition[1].z .. ")\nSouth-West area position (x: " .. areaPosition[2].x .. ", y: " .. areaPosition[2].y .. ", z: " .. areaPosition[2].z .. ")\nScript will not work correctly, please fix it.")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Something is wrong, please contact a gamemaster.")
return false
end

if getPlayerLevel(cid) < level then
doPlayerSendCancel(cid, "You have no level " .. level .. " to do this quest.")
return true
end

if getPlayerStorageValue(cid, storages.done) > 0 then
doPlayerSendCancel(cid, "You did this quest.")
return true
end

if onePerQuest then
local players = getPlayersOnline()
for _, pid in ipairs(players) do
if isInRange(getCreaturePosition(pid), areaPosition[1], areaPosition[2]) then
doPlayerSendCancel(cid, "The player " .. getCreatureName(pid) .. " not yet completed the quest.")
return true
end
end
end

doTransformItem(itemEx.uid, blockingTree[itemEx.itemid][2])
doSendMagicEffect(toPosition, CONST_ME_POFF)
doMoveCreature(cid, SOUTH)
doPlayerSetStorageValue(cid, storages.cutTree, 1)
return true

elseif isInArray(demonOak, itemEx.itemid) then

local get = getPlayerStorageValue(cid, itemEx.itemid)
if get == -1 then
doPlayerSetStorageValue(cid, itemEx.itemid, 1)
end

if(getPlayerStorageValue(cid, 5099) == 12 and getPlayerStorageValue(cid, 5101) == 12 and getPlayerStorageValue(cid, 5100) == 12 and getPlayerStorageValue(cid, 5098) == 12) then
doTeleportThing(cid, positions.kick)
doPlayerSetStorageValue(cid, storages.done, 1)
doPlayerRemoveItem(cid,5015,1)
return true
end

if getPlayerStorageValue(cid, itemEx.itemid) > 11 then
doSendMagicEffect(toPosition, CONST_ME_POFF)
return true
end

if(math.random(100) <= 1) then
doPlayerSetStorageValue(cid, itemEx.itemid, 12)
return true
end


if summons[get] then
for i = 1, #summons[get] do
doSummonCreature(summons[get][i], positions.summon[i])
end
doSendMagicEffect(toPosition, CONST_ME_DRAWBLOOD)
doPlayerSetStorageValue(cid, itemEx.itemid, get + 1)
if math.random(100) >= 50 then
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -270, -310, CONST_ME_BIGPLANTS)
end
end
return false
end
end