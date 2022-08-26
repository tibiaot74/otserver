function onStepIn(cid, item, position, fromPosition)
    if item.actionid == 51934 then
        if getPlayerStorageValue(cid,10274) == -1 then
            setPlayerStorageValue(cid,10274,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Verminor큦 throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Veminor큦 spirit.')
        end
    elseif item.actionid == 51938 then
        if getPlayerStorageValue(cid,10275) == -1 then
            setPlayerStorageValue(cid,10275,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Infernatil큦 throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Infernatil큦 spirit.')
        end
    elseif item.actionid == 51933 then
        if getPlayerStorageValue(cid,10276) == -1 then
            setPlayerStorageValue(cid,10276,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Tafariel큦 throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Tafariel큦 spirit.')
        end
    elseif item.actionid == 51936 then
        if getPlayerStorageValue(cid,10277) == -1 then
            setPlayerStorageValue(cid,10277,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Apocalypse큦 throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Apocalypse큦 spirit.')
        end
    elseif item.actionid == 51935 then
        if getPlayerStorageValue(cid,10278) == -1 then
            setPlayerStorageValue(cid,10278,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Pumin큦 throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Pumin큦 spirit.')
        end
    elseif item.actionid == 51944 then
        if getPlayerStorageValue(cid,10279) == -1 then
            setPlayerStorageValue(cid,10279,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Bazir큦 throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Bazir큦 spirit.')
        end
    elseif item.actionid == 51937 then
        if getPlayerStorageValue(cid,10280) == -1 then
            setPlayerStorageValue(cid,10280,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Ashfalor큦 throne and absorbed some of his spirit.')
        end

    end
    return true
end