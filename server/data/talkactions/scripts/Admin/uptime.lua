function onSay(cid,words,param)
if getPlayerAccess(cid) >= 1 then
uptime = getWorldUpTime()

local hours = math.floor(uptime / 3600)
local minutes = math.floor((uptime - (hours * 3600)) / 60)

doPlayerSendTextMessage(cid, 22, "This world has been online straight for ".. uptime .." seconds.")
doPlayerSendTextMessage(cid, 22, "".. hours .." hours and ".. minutes .." minutes.")
end
end
