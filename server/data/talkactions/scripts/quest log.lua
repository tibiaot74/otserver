
function onSay(cid, words, param)
if getPlayerStorageValue(cid, 7003) >= 1 then
antidotequest = "[1/1]"
else
antidotequest = "[0/1]"
end
if getPlayerStorageValue(cid, 7002) >= 1 then
studdedshieldquest = "[1/1]"
else
studdedshieldquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7001) >= 1 then
legionhelmetquest = "[1/1]"
else
legionhelmetquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7004) >= 1 then
studdedlegsquest = "[1/1]"
else
studdedlegsquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7005) >= 1 then
pickquest = "[1/1]"
else
pickquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7007) >= 1 then
shortswordquest = "[1/1]"
else
shortswordquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7009) >= 1 then
bearroomkeyquest = "[1/1]"
else
bearroomkeyquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7010) >= 1 then
bearroomquest = "[1/1]"
else
bearroomquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7008) >= 1 then
CaptainIgluesTreasureQuest = "[1/1]"
else
CaptainIgluesTreasureQuest = "[0/1]"
end
if getPlayerStorageValue(cid, 7014) >= 1 then
doubletquest = "[1/1]"
else
doubletquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7013) >= 1 then
combatknifequest = "[1/1]"
else
combatknifequest = "[0/1]"
end
if getPlayerStorageValue(cid, 7015) >= 1 then
dragoncorpsequest = "[1/1]"
else
dragoncorpsequest = "[0/1]"
end
if getPlayerStorageValue(cid, 7016) >= 1 then
gobblintemplequest = "[1/1]"
else
gobblintemplequest = "[0/1]"
end
if getPlayerStorageValue(cid, 7018) >= 1 then
katanakeyquest = "[1/1]"
else
katanakeyquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7019) >= 1 then
katanaquest = "[1/1]"
else
katanaquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7021) >= 1 then
minotaurhellquest = "[1/1]"
else
minotaurhellquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7023) >= 1 then
rapierquest = "[1/1]"
else
rapierquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7024) >= 1 then
torchquest = "[1/1]"
else
torchquest = "[0/1]"
end
if getPlayerStorageValue(cid, 7026) >= 1 then
smallaxequest = "[1/1]"
else
smallaxequest = "[0/1]"
end

doShowTextDialog(cid, 1967, "~Quest log~\nTorch -".. torchquest .."\nDoublet -".. doubletquest .."\nRapier -".. rapierquest .."\nCombat Knife -".. combatknifequest .."\nShort Sword -".. shortswordquest .."\nPick -".. pickquest .."\nSmall Axe -".. smallaxequest .."\nStudded Shield -".. studdedshieldquest .."\nAntidote Rune -".. antidotequest .."\nBear Room Key -".. bearroomkeyquest .."\nBear Room Quest -".. bearroomquest .."\nMinotaur Hell -".. minotaurhellquest .."\nLegion Helmet -".. legionhelmetquest .."\nStudded Legs -".. studdedlegsquest .."\nCaptain Iglues Treasure Quest -".. CaptainIgluesTreasureQuest .."\nGoblin Temple -".. gobblintemplequest .."\nDragon Corpse -".. dragoncorpsequest .."\nKatana Key -".. katanakeyquest .."\nKatana -".. katanaquest .."\n ")
end

