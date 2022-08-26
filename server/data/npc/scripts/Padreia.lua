local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end

function PadreiaSayCallback (cid, type, msg)
if (getPlayerStorageValue(cid, 6665) ~= 1) then
   return 0
end


		if msgcontains(msg, 'hello') then
        npcHandler:say('Crunor\'s blessings. I am glad to see you, Jogador! If you\'re looking to learn some new spells, I\'m all yours.')
        talk_state = 1
		elseif msgcontains(msg, 'crunor\'s caress') and talk_state == 1 then
            npcHandler:say('Don\'t ask. They were only an unimportant footnote of history.')
                talk_state = 2
		elseif msgcontains(msg, 'footnote') and talk_state == 2 then
            npcHandler:say('They thought they have to bring Crunor to the people if people did not find to Crunor on their own. To achieve that they founded the inn Crunor\'s Cottage, south of Mt. Sternum.')
					setPlayerStorageValue(cid,6666,1)
					talk_state = 3
		elseif msgcontains(msg, 'bye') and (talk_state >= 1 and talk_state <= 3) then
			npcHandler:say('Farewell, '.. getPlayerName(cid) ..'. May Crunor be with you, my child.')
			talk_state = 0
		end
	-- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, PadreiaSayCallback)