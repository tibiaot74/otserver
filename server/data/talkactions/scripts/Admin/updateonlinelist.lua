function onSay(cid,words,param)
if getPlayerAccess(cid) >= 6 then

membersList = getPlayersOnlineList()

	for i, _cid in pairs(membersList) do
	mysqlQuery("UPDATE `players` SET `players`.`status`=1 WHERE `players`.`name` = \"" .. getPlayerName(_cid) .. "\"", 'UPDATE')
	end
	
end
end

