function onAttack(cid, target)
    if (isPlayer(cid) and getCreatureSkullType(target) ==  SKULL_WHITE or getCreatureSkullType(target) ==  SKULL_RED) then
        doPlayerSetPzLocked(cid, true)
    end
    return true
end