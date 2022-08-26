local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end

function ZoltanSayCallback (cid, type, msg)
if (getPlayerStorageValue(cid, 6664) ~= 1) then
   return 0
end
	
	if msgcontains(msg, 'hello') then
        npcHandler:say('Welcome '.. getPlayerName(cid) ..' student of the arcane arts. I teach the fiercest spells available.')
        talk_state = 1
		elseif msgcontains(msg, 'yenny the gentle') and talk_state == 1 then
            npcHandler:say('Ah, Yenny the Gentle was one of the founders of the druid order called Crunor\'s Caress, that has been originated in her hometown Carlin.')
                talk_state = 2
		elseif msgcontains(msg, 'crunors caress') and talk_state == 2 then
            npcHandler:say('A quite undruidic order of druids they were, as far as we know. I have no more enlightening knowledge about them though.')
					setPlayerStorageValue(cid,6665,1)
					talk_state = 3
		elseif msgcontains(msg, 'bye') and (talk_state >= 1 and talk_state <= 3) then
			npcHandler:say('Use your knowledge wisely, '.. getPlayerName(cid) ..'!')
			talk_state = 0
		end
	-- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, ZoltanSayCallback)