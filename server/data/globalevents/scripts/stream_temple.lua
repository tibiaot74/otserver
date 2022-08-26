-- XML line: <globalevent name="stream" interval="1" script="stream_temple.lua"/>
 
-- for linux default: '/var/www/streamtemple/stream.json'
-- create folder 'streamtemple' in main folder of acc. maker!
-- [LINUX] check that folder 'streamtemple' has rights to create new file by anyone
local playerJsonInfoPath = '/var/www/streamtemple/stream.json'
 
-- center position of your 'stream' - make sure you set valid left/top corner of image in PHP!
-- stream show only players on same 'floor'/'level'
local centerPosition = {x = 32349, y = 32222, z = 7}
 
 
--[[ I RECOMMEND TO NOT SET WIDTH HIGHER THEN 20, BECAUSE IT MAY CAUSE LITTLE LAG ON SERVERS WITH 300-400 ONLINE! ]]--
 
-- viewWidth is not really width of stream, if viewWidth is '11':
-- then stream shows players 11 tiles to the left and 11 tiles to the right from center positon, so real width is 23 tiles!
local viewWidth = 11
 
-- viewHeight is not really height of stream, if viewHeight is '6':
-- then stream shows players 6 tiles to the top and 6 tiles to the bottom from center positon, so real height is 13 tiles!
local viewHeight = 6
 
 
function onThink(interval, lastExecution)
    -- get players/monsters/npcs in area list
    local spectators = getSpectators(centerPosition, viewWidth, viewHeight, false)
 
    -- generate information
    local stream = "{"
    if(spectators) then
        for _, spectator in pairs(spectators) do
            local player = spectator
            if(player) then
                local playerPosition = getCreaturePosition(player)
                local playerOutfit = getCreatureOutfit(player)
                if(centerPosition.z == playerPosition.z) then
                    stream = stream .. '"'..getCreatureName(player)..'":['.. playerPosition.x ..','.. playerPosition.y ..','.. playerPosition.z ..','.. playerOutfit.lookType ..','.. playerOutfit.lookHead ..','.. playerOutfit.lookBody ..','.. playerOutfit.lookLegs ..','.. playerOutfit.lookFeet ..','.. getPositionByDirection(player) ..','.. getCreatureLookDirection(player) ..',' .. playerOutfit.lookTypeEx .. ','.. getCreatureSkullType(player) ..'],'
                end
            end
        end
    end
    stream = stream .. '}'
 
    -- save to file
    local streampath = io.open(playerJsonInfoPath, "w")
    streampath:write(stream)
    streampath:close()
 
    return true
end