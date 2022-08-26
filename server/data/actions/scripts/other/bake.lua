
function onUse(cid, item, frompos, item2, topos)
	
local bloodpay = 2692

	if item2.itemid == 1786 then
		if doPlayerRemoveItem(cid, bloodpay, 1) == 1 then 
		doPlayerAddItem(cid,2689,1)
		end
    elseif item2.itemid == 1788 then
	if doPlayerRemoveItem(cid, bloodpay, 1) == 1 then 
	doPlayerAddItem(cid,2689,1)
		end

    elseif item2.itemid == 1790 then
	if doPlayerRemoveItem(cid, bloodpay, 1) == 1 then 
	doPlayerAddItem(cid,2689,1)
		end

	elseif item2.itemid == 1792 then
if doPlayerRemoveItem(cid, bloodpay, 1) == 1 then 
		doPlayerAddItem(cid,2689,1)
		end
	else
		return 0
	end

        doDecayItem(item2.uid)
	
	return 1
end