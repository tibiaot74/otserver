local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end

function RiddlerSayCallback (cid, type, msg)

local cfg = {
          toPos = {x=32478, y=31905, z=1},
		  fail = {x=32725, y=31589, z=12},
}

		if msgcontains(msg, 'hello') then
        npcHandler:say(''..getPlayerName(cid)..' ! HEHEHEHE! Another fool visits the tower! Excellent!.')
        talk_state = 1
		elseif msgcontains(msg, 'test') and talk_state == 1 then
            npcHandler:say('Death awaits those who fail the test of the three seals! Do you really want me to test you?.')
                talk_state = 2
		elseif msgcontains(msg, 'yes') and talk_state == 2 then
            npcHandler:say('FOOL! Now you\'re doomed! But well ... So be it! Let\'s start out with the Seal of Knowledge and the first question: What name did the necromant king choose for himself?.')
			talk_state = 3
		elseif msgcontains(msg, 'goshnar') and talk_state == 3 then
            npcHandler:say('HOHO! You have learned your lesson well. Question number two then: Who or what is the feared Hugo?.')
			talk_state = 4			
		elseif msgcontains(msg, 'demonbunny') and talk_state == 4 then
            npcHandler:say('HOHO! Right again. All right. The final question of the first seal: Who was the first warrior to follow the path of the Mooh\'Tah?.')
			talk_state = 5
		elseif msgcontains(msg, 'Tha\'kull') and talk_state == 5 then
            npcHandler:say('HOHO! Lucky you. You have passed the first seal! So ... would you like to continue with the Seal of the Mind?.')
			talk_state = 6
		elseif msgcontains(msg, 'yes') and talk_state == 6 then
            npcHandler:say('As you wish, foolish one! Here is my first question: It\'s lighter then a feather but no living creature can hold it for ten minutes?.')
			talk_state = 7
		elseif msgcontains(msg, 'breath') and talk_state == 7 then
            npcHandler:say('That was an easy one. Let\'s try the second: If you name it, you break it.')
			talk_state = 8
		elseif msgcontains(msg, 'silence') and talk_state == 8 then
            npcHandler:say('Hm. I bet you think you\'re smart. All right. How about this: What does everybody want to become but nobody to be?.')
			talk_state = 9
		elseif msgcontains(msg, 'old') and talk_state == 9 then
            npcHandler:say('ARGH! You did it again! Well all right. Do you wish to break the Seal of Madness?.')
			talk_state = 10	
		elseif msgcontains(msg, 'yes') and talk_state == 10 then
            npcHandler:say('GOOD! So I will get you at last. Answer this: What is your favourite colour?.')
			talk_state = 11
		elseif msgcontains(msg, 'green') and talk_state == 11 then
            npcHandler:say('UHM UH OH ... How could you guess that? Are you mad??? All right. Penultimate question: What is the opposite?.')
			talk_state = 12	
		elseif msgcontains(msg, 'none') and talk_state == 12 then
            npcHandler:say('NO! NO! NO! That cant be true. You\'re not only mad, you are a complete idiot! Ah well. Here is the last question: What is 1 plus 1?.')
			talk_state = 13				
		elseif getPlayerStorageValue(cid,6667) == 1 and msgcontains(msg, '1') or msgcontains(msg, '2') or msgcontains(msg, '3') or msgcontains(msg, '4') or msgcontains(msg, '5') or msgcontains(msg, '6') or msgcontains(msg, '7') or msgcontains(msg, '8') or msgcontains(msg, '9') or msgcontains(msg, '0') and talk_state == 13 then
        if (getPlayerStorageValue(cid, 6668) == 1) then
			npcHandler:say('WRONG!!')
			doTeleportThing(cid, cfg.toPos)
			talk_state = 0	
        else
			npcHandler:say('WRONG!!')
			doTeleportThing(cid, cfg.fail)
			talk_state = 0  
        end					
		end
	-- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, RiddlerSayCallback)