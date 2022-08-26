function onUse(cid, item, frompos, item2, topos)
if getTileHouseInfo(getPlayerPosition(cid)) >= 1 then --Making sure it's in a house
setPlayerStorageValue(cid,1340,os.time())
end
end

