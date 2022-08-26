
function onSay(cid,words,param)
---------------------------------
pos = getPlayerPosition(cid)
GMHOUSE = {x=32231, y=32209, z=7}
---------------------------------
	if (getTilePzInfo(pos) == TRUE) then
		if getHouseOwner(getTileHouseInfo(pos)) == getPlayerGUID(cid) then
		cleanHouse(getHouseByPlayerGUID(cid))
		setHouseOwner(getHouseByPlayerGUID(cid), 0)
		end
	end
end
