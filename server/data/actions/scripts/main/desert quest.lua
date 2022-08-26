local config = { 
    -- level needed to make the quest
    level = 20, 

    -- if players should be able to do the quest unlimited amount of times (not conflicting quest rewards)
    redo = {
        status = true, -- true = unlimited, false = once
        storageValue = 4535 -- only if status is false this will be used
    },
  
    -- vocation requirement, positions and item configuration
    { 
        vocations = {1, 5}, 
        itemId = 2175, 
        playerPos = {x=32677, y=32089, z=8},
        newPos = {x=32671, y=32069, z=8},
        itemPos = {x=32679, y=32089, z=8} 
    }, 
  
    { 
        vocations = {2, 6}, 
        itemId = 2674, 
        playerPos = {x=32669, y=32089, z=8},
        newPos = {x=32672, y=32069, z=8}, 
        itemPos = {x=32667, y=32089, z=8} 
    }, 
  
    { 
        vocations = {3, 7}, 
        itemId = 2455, 
        playerPos = {x=32673, y=32085, z=8},
        newPos = {x=32671, y=32070, z=8}, 
        itemPos = {x=32673, y=32083, z=8} 
    }, 
  
    { 
        vocations = {4, 8}, 
        itemId = 2376, 
        playerPos = {x=32673, y=32093, z=8},
        newPos = {x=32672, y=32070, z=8}, 
        itemPos = {x=32673, y=32094, z=8} 
    } 
} 

function onUse(cid)
    local players = {}
    local items = {}
    for _, v in ipairs(config) do
 
        v.playerPos.stackpos = 253
        local player = getThingfromPos(v.playerPos).uid
 
        if isPlayer(player) == FALSE then
            return doPlayerSendCancel(cid, "There are not enough players.")
        elseif getPlayerLevel(player) < config.level then
            players.level = true
        elseif isInArray(v.vocations, getPlayerVocation(player)) == FALSE then
            players.vocation = true
        else
            v.itemPos.stackpos = 1
            local item = getThingfromPos(v.itemPos)
 
            if item.itemid ~= v.itemId then
                players.item = true
            else
                table.insert(players, player)
                table.insert(items, item.uid)
            end
        end
    end

    if players.level then
        doPlayerSendCancel(cid, "All players need to be level " .. config.level .. " or above.")
    elseif players.vocation then
        doPlayerSendCancel(cid, "All players must stand on the correct tiles.")
    elseif players.done then
        doPlayerSendCancel(cid, "A player in your team has already done this quest.")
    elseif players.item then
        doPlayerSendCancel(cid, "All items must be on the correct positions.")
    else
        for k, player in ipairs(players) do
            doSendMagicEffect(getCreaturePosition(player), CONST_ME_POFF)
            doTeleportThing(player, config[k].newPos)
            doSendMagicEffect(getCreaturePosition(player), CONST_ME_TELEPORT)
        end
        
        for _, item in ipairs(items) do
            doRemoveItem(item)
        end
    end
 
    return TRUE
end