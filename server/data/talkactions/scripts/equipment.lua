  local config =
{
        cost = 100
}

function onSay(cid, words, param, channel)
        if(param == "" or param == nil) then
                return false
        end

        if doPlayerRemoveMoney(cid, config.cost) == FALSE then
                doPlayerSendCancel(cid, "You do not have enough money.")
                doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
                return true
        end

        local getNpc = getCreatureByName(param)
        if isNpc(getNpc) == TRUE then

        local playerPos, npcPos = getCreaturePosition(cid), getCreaturePosition(getNpc)
        local px, py = 0, 0
        local pS = ""
        local text = ""

                if(playerPos.x == npcPos.x) and (playerPos.y < npcPos.y) then
                        px = 1
                        py = npcPos.y - playerPos.y
                        pS = "south"
                elseif(playerPos.x == npcPos.x) and (playerPos.y > npcPos.y) then
                        px = 1
                        py = playerPos.y - npcPos.y
                        pS = "north"
                elseif(playerPos.x < npcPos.x) and (playerPos.y == npcPos.y) then
                        px = npcPos.x - playerPos.x
                        py = 1
                        pS = "east"
                elseif(playerPos.x > npcPos.x) and (playerPos.y == npcPos.y) then
                        px = playerPos.x - npcPos.x
                        py = 1
                        pS = "west"
                elseif(playerPos.x > npcPos.x) and (playerPos.y > npcPos.y) then
                        px = playerPos.x - npcPos.x
                        py = playerPos.y - npcPos.y
                        pS = "north-west"
                elseif(playerPos.x > npcPos.x) and (playerPos.y < npcPos.y) then
                        px = playerPos.x - npcPos.x
                        py = npcPos.y - playerPos.y
                        pS = "south-west"
                elseif(playerPos.x < npcPos.x) and (playerPos.y < npcPos.y) then
                        px = npcPos.x - playerPos.x
                        py = npcPos.y - playerPos.y
                        pS = "south-east"
                elseif(playerPos.x < npcPos.x) and (playerPos.y > npcPos.y) then
                        px = npcPos.x - playerPos.x
                        ps = playerPos.y - npcPos.y
                        pS = "north-east"
                end

                if(px <= 4 and py <= 4) then
                        text = "" .. getCreatureName(getNpc) .. " is standing next you."
                elseif((px > 4 and px <= 100) and (py > 4 and py <= 100)) or ((px > 4 and px <= 100) and (py <= 4)) or ((px <= 4) and (py > 4 and py <= 100)) then
                        text = "" .. getCreatureName(getNpc) .. " is to the " .. pS .. "."
                elseif((px > 100 and px <= 274) and (py > 100 and py <= 274)) or ((px > 100 and px <= 274) and (py <= 100)) or ((px <= 100) and (py > 100 and py <= 274)) then
                        text = "" .. getCreatureName(getNpc) .. " is far to the " .. pS .. "."
                elseif((px > 274 and px <= 280) and (py > 274 and py <= 280)) or ((px > 274 and px <= 280) and (py < 274)) or ((px < 274) and (py > 274 and py <= 280)) then
                        text = "" .. getCreatureName(getNpc) .. " is very far to the " .. pS .. "."
                elseif(px > 280 and py > 280) or (px > 280 and py < 280) or (px < 280 and py > 280) then
                        text = "" .. getCreatureName(getNpc) .. " is to the " .. pS .. "."
                end

                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, text)
                doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_GREEN)
                return false
        else
                doPlayerSendCancel(cid, "A npc with that name does not exist.")
                doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
                return true
        end
end 