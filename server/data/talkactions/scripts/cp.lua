function onSay(cid, words, param)
PREMIUMDAYS = getPlayerPremiumDays(cid)
doPlayerSendTextMessage(cid,22,"You have ".. PREMIUMDAYS .." premium days left.")
end
