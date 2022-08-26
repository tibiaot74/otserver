dofile('data\\actions\\scripts\\train\\RollerCoasterEvents.lua')

local TRAINS = {7131, 7132}
local all = {7121, 7122, 7123, 7124, 7125, 7126, 7133, 7134, 7135, 7136}

local ACTION_TRAIN = {1001, 1002}

local RAILS = {
{id = all[1], dirs = {{dir = SOUTH, out = 2},{dir = NORTH, out = 2}}}, 
{id = all[2], dirs = {{dir = EAST, out = 1},{dir = WEST, out = 1}}},
{id = all[3], dirs = {{dir = EAST, out = 1},{dir = SOUTH, out = 2}}},
{id = all[4], dirs = {{dir = WEST, out = 1},{dir = SOUTH, out = 2}}},
{id = all[5], dirs = {{dir = EAST, out = 1},{dir = NORTH, out = 2}}},
{id = all[6], dirs = {{dir = WEST, out = 1},{dir = NORTH, out = 2}}},
{id = all[7], stop = 1},
{id = all[8], stop = 1},
{id = all[9], stop = 1},
{id = all[10], stop = 1},
}

local SLOW = 200
local FAST = 0
local INCREASE = 50
local DECREASE = 50
local DOWN_INCREASE = 450
local UP_DECREASE = 155

local INFOS = {}

TRUE = 1
FALSE = 0

 
function getRail(pos)
  local stack = 1 
  local found = 0
  repeat
    pos.stackpos = stack
    rail = getThingfromPos(pos)
    if (rail.itemid == 0) then break end   
    for i, r in ipairs(RAILS) do
      if (rail.itemid == r.id) then
        found = 1
        break
      end   
    end
    stack = stack + 1
  until (found == 1)
  return rail
end

function moveTrain(cid)
  params = INFOS[cid]
  pos = getCreaturePosition(cid)
  rail = getRail(pos)
  dir = -1
  for i,r in ipairs(RAILS) do
    if (rail.itemid == r.id) then
      if (RollerCoaster:onMove(cid, rail, r, pos) == FALSE) then table.remove(INFOS, cid) return 1 end 
      if (r.stop ~= nil) then
        if (r.stop == 1) then
          RollerCoaster:onExitQuery(cid)
          addEvent(exitTrain, 2000, cid)
          return 1
        end
      end 
      change = rail.actionid - 1000 
      power = 0    
      power = change

      doChangeType(cid, r.id, INFOS[cid].beforeid)                 
      info = r.dirs[INFOS[cid].type]
      dir = info.dir  
      if ((power == 1) or (power == 2)) then
        if (RollerCoaster:onChangeSpeed(cid, power) == TRUE) then
          if (power == 2) then
            INFOS[cid].speed = INFOS[cid].speed - INCREASE
          elseif (power == 1) then
            INFOS[cid].speed = INFOS[cid].speed + DECREASE
          end 
        end
      end
      if (INFOS[cid].currZ ~= pos.z) then
        if (RollerCoaster:onChangeLevel(cid, INFOS[cid].currZ, pos.z) == TRUE) then
          if (INFOS[cid].currZ > pos.z) then
             INFOS[cid].speed = INFOS[cid].speed + UP_DECREASE
          elseif (params.currZ < pos.z) then 
             params.speed = params.speed - DOWN_INCREASE
          end  
        end 
      end
      if (params.speed < 1) then params.speed = 1 end
      params.currZ = pos.z
      newid = TRAINS[info.out]  
      INFOS[cid].beforeid = r.id
      break
    end  
  end      
  if (dir ~= -1) then
    doSetItemOutfit(cid, newid, -1)
    doMoveCreature(cid, dir)
    addEvent(moveTrain,params.speed,cid)
  else
    RollerCoaster:onExitQuery(cid)
    addEvent(exitTrain, 2000, cid)
  end
end

function exitTrain(cid)
  table.remove(INFOS, cid)
  RollerCoaster:onExit(cid)
  doSetItemOutfit(cid, TRAINS[1], 0)
  pos = getCreaturePosition(cid)
  pos.y = pos.y - 1
  doTeleportThing(cid, pos)
  doChangeSpeed(cid, getCreatureBaseSpeed(cid))
end

function enterTrain(params)   
  if (RollerCoaster:onEnter(cid, params[2]) == TRUE) then
    doSetItemOutfit(params[1], params[2], -1)
    pos = getCreaturePosition(params[1])
    table.insert(INFOS, params[1],{type = params.type, speed = SLOW, currZ = pos.z}) 
    addEvent(moveTrain,1000,params[1])
  end
end

function getSpeed(cid)
  if (INFOS[cid].speed ~= nil) then return INFOS[cid].speed end
  return FALSE
end

function setSpeed(cid, speed)
  if (INFOS[cid].speed ~= nil) then INFOS[cid].speed = speed return TRUE end
  return FALSE
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
  if (isInArray(ACTION_TRAIN, item.actionid) == TRUE) then
    if (RollerCoaster:onEnterQuery(cid, item) == TRUE) then
      doTeleportThing(cid, toPosition)
      doChangeSpeed(cid, -getCreatureSpeed(cid))
      addEvent(enterTrain,500,{cid, item.itemid, type=(item.actionid-1000)})
    end
  end
  return TRUE
end


----"No Scripting Needed" System-----
local change = {}
change[all[1]] = {all[3], all[4]}
change[all[2]] = {all[4], all[6]}
change[all[3]] = {all[1], all[4], all[6]}
change[all[4]] = {all[1], all[2], all[3], all[5], all[6]}
change[all[5]] = {all[4]}
change[all[6]] = {all[2], all[3], all[4]}
change[all[7]] = {}
change[all[8]] = {}
change[all[9]] = {}
change[all[10]] = {}
 
function doChangeType(cid, id, beforeID)
  if (table.getn(change[id]) > 0) then
    if (isInArray(change[id],beforeID) == TRUE) then
      if (INFOS[cid].type == 1) then INFOS[cid].type = 2 else INFOS[cid].type = 1 end
    end   
  end
end
