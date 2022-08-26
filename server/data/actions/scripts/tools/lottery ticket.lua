
function onUse(cid, item, frompos, item2, topos)
CHANCE1 = math.random(1, 1000)
CHANCE2 = math.random(1,100)
MONEY = math.random(1,100)
	if doRemoveItem(item.uid) == TRUE then
		if CHANCE1 < 5 then
			if CHANCE2 <= 2 then
			doPlayerAddItem(cid, 2152, CHANCE2)
			elseif CHANCE2 >= 3 and CHANCE2 <= 30 then
			doPlayerAddItem(cid, Cfpiggybank, 1)
			else
			doPlayerAddItem(cid, 2148, MONEY)
			end
		doPlayerSendCancel(cid, "this ticket appears to be empty")
		end
	end
return TRUE
end
