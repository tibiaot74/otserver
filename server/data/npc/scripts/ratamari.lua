local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
NpcSystem.parseParameters(npcHandler)

npcHandler:setMessage(MESSAGE_GREET, "Meep? I mean - hello! Sorry, |PLAYERNAME|... Being a rat has kind of grown on me.")
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, "And now there's more of you? Great! More attention is just what I need. Step back and wait, |PLAYERNAME|!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Meep!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Remember - this conversation never took place!")

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
 
function RataSayCallback (cid, type, msg)
if (getPlayerStorageValue(cid, 1002) ~= 1) then
   return 0
end
    if (msgcontains(msg:lower(),"piedpiper")) and (npcHandlerfocus == 0) then
           npcHandler:greet(cid)
    elseif (msgcontains(msg:lower(),"piedpiper")) and (npcHandlerfocus > 0) and (npcHandlerfocus ~= cid) then
           npcHandler:onGreet(cid)
    elseif (msgcontains(msg:lower(),'bye') or msgcontains(msg:lower(),'farewell')) then
           npcHandler:onFarewell(cid)

-------missions------
        elseif(msgcontains(msg:lower(), 'report') or msgcontains(msg:lower(), 'cheese')) and (getPlayerStorageValue(cid, 1006) == 1) and (getPlayerStorageValue(cid, 1007) ~= 1) then
                  if (getPlayerStorageValue(cid, 1008) == 1) then
                        npcHandler:say("I already gave you the report. I'm not going to write another one.",cid)
                        npcHandlerfocus = 0
                  else
                        npcHandler:say("Ok, have you brought me the cheese, I've asked for?",cid)
                        npcHandlerfocus = 1
                  end
       elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 1) then
            if (getPlayerStorageValue(cid, 1008) ~= 1) then
               doPlayerAddItem(cid,2345,1)
			   doPlayerRemoveItem(cid,2696,1)
               setPlayerStorageValue(cid, 1008, 1)
			   setPlayerStorageValue(cid, 1007, 1)
			   npcHandler:say("Meep! Meep! Great! Here is the spyreport for you!",cid)
                  else
                        npcHandler:say("No cheese - no report.", cid)
                        npcHandlerfocus = 0
                  end
				  
				  elseif (msgcontains(msg:lower(),"ashta'daramai")) then
               
               npcHandler:say("I miss the place. I really feel homesick, you know? ...", cid, 1000)
               npcHandler:say("It makes my mouth water just to think of all the delicious cheese Bo'ques is hiding in his private larder.", cid, 7000)

        elseif (msgcontains(msg:lower(),"alesar")) then
               
               npcHandler:say("His defection was a serious blow to our cause. Both Gabel and Fa'hradin are more concerned about it than they dare admit. ...", cid, 1000)
               npcHandler:say("Alesar is the most gifted smith the djinn race has ever produced, and now he works for the enemy. I am not entirely sure why he defected, but I am convinced it had nothing to do with money. ...", cid, 10500)
               npcHandler:say("Alesar has been a devout follower of Daraman for as long as I can remember, and he thought little of worldly possessions. In fact, from what I've seen Malor and Baa'leal were quite as astonished about it all as Gabel and Fa'hradin. ...", cid, 23500)
               npcHandler:say("All I know is that Alesar used to be a kind, helpful djinn. Then one day he disappeared. When he returned he had changed. He had become taciturn and bitter. And all of a sudden he hated humans. All of them. ...", cid, 38500)
               npcHandler:say("I think he suffered a deep spiritual crisis. Whatever caused this crisis is anyone's guess.", cid, 52500)

        elseif (msgcontains(msg:lower(),"baa'leal")) then
               
               npcHandler:say("Baa'leal is Malor's lieutenant. He is fiercely loyal to his boss, and that is one of the main reasons why no Efreet has ever dared challenge Malor's authority. If it hadn't been for him a new leader would have come up in Malor's absence. ...", cid, 1000)
               npcHandler:say("I guess that is why despite all of his shortcomings he still has Malor's trust and support. He is not the brightest djinn under the sun, you know.", cid, 16500)

        elseif (msgcontains(msg:lower(),"piedpiper")) then
               npcHandler:say("'Pied Piper'. Hilarious. Fa'Hradin has a very strange sense of humour.",cid)
               npcHandlerfocus = 0
        elseif (msgcontains(msg:lower(),"rat")) then
               npcHandler:say("Your power of observation is stunning. Yes, I'm a rat.",cid)
               npcHandlerfocus = 0
        end

        local keywords = {
        ["name"] = {response = "I have many names and faces. But I suppose you can call me Rata'mari."},
        ["rata'mari"] = {response = "Shh! The walls have ears, you know!?"},
        ["password"] = {response = "'Pied Piper'. Hilarious. Fa'Hradin has a very strange sense of humour."},
        ["job"] = {response = "I'm a spy. Now guess what I've come here for!"},
        ["trade"] = {response = "Trade? Look at me! Do I look as if I had any pockets to stash stuff in?"},
        ["daraman"] = {response = "Daraman? Well, he was a great prophet, but... look, this is not a good point of time to discuss philosophy, ok?"},
        ["human"] = {response = "So Fa'hradin turned you into a human? That's really hard, buddy. Rats, humans... what comes next?"},
        ["fa'hradin"] = {response = "That damn dabbler! 'I am going to disguise you', he said. 'Nobody will ever recognise you', he said! Now look at me! That botching fool! And I can't even bite his ankles!"},
        ["djinn"] = {response = "I used to be one, too. That was before Fa'hradin had the bright idea to turn me into a flea-ridden rodent."},
        ["efreet"] = {response = "After many months of careful study I have come to the conclusion the efreet are much more different from us Marid then I thought! Their skin is green, for a start!"},
        ["marid"] = {response = "I haven't seen my brothers for a long time!"},
        ["mal'ouquah"] = {response = "I hate this place. It is cold and damp! And the local rats are real snobs!"},
        ["gabel"] = {response = "Gabel is our undisputed leader, even though he is too modest to brag with it. Even though Fa'hradin coordinates all military operations it is always Gabel who has the final say."},
        ["king"] = {response = "No more kings for us! We are a democratic people now! Well, sort of."},
        ["malor"] = {response = "I have found out all kinds of things about him! He is left-handed, his favourite dish is hyena chop roasted in sandwasp honey marinade, and he has this weird habit of scratching his right ear whenever he is angry - which happens quite often, I might add."},
        ["zathroth"] = {response = "Zathroth was the creator of our race. Which doesn't mean we like him. But too be honest, I don't think this is the time and place to discuss religious matters."},
        ["tibia"] = {response = "A nice world. I think I prefer it to all others. Not that I have seen any others, of course."},
        ["darashia"] = {response = "I have heard nice things about that city. I wish I had an assignment there rather than in this god-forsaken place."},
        ["scarab"] = {response = "A scarab? What? Where? Hey, don't give me shock like that! Did you know they eat rats?!"},
        ["edron"] = {response = "I have heard lots about the human cities to the north. Perhaps I will be sent there one day. That would be a lovely change."},
        ["thais"] = {response = "I have heard lots about the human cities to the north. Perhaps I will be sent there one day. That would be a lovely change."},
        ["venore"] = {response = "I have heard lots about the human cities to the north. Perhaps I will be sent there one day. That would be a lovely change."},
        ["kazordoon"] = {response = "I have heard lots about the human cities to the north. Perhaps I will be sent there one day. That would be a lovely change."},
        ["carlin"] = {response = "I have heard lots about the human cities to the north. Perhaps I will be sent there one day. That would be a lovely change."},
        ["ab'dendriel"] = {response = "I have heard lots about the human cities to the north. Perhaps I will be sent there one day. That would be a lovely change."},
        ["ankrahmun"] = {response = "That is the one place where I would hate to work even more. My sources there have told me the city is now controlled by some loony who thinks he is a god or something."},
        ["pharaoh"] = {response = "They say the new pharaoh is completely out of his mind. Rumour has it that he became an undead on his own free will! I think that says it all."},
        ["palace"] = {response = "The palace in Ankrahmun used to be renowned for its splendour and its hospitable atmosphere. Now I suppose rats are the only living creatures that are still tolerated in this place. Hang on... I hope this does not give Gabel ideas."},
        ["ascension"] = {response = "I am not much into religion, but from what I know this is an important part of that foolish pharaoh's creed."},
        ["rah"] = {response = "Yes... rings a bell. Has to do with Ankrahmun's pharaoh, hasn't it?"},
        ["uthun"] = {response = "Yes... rings a bell. Has to do with Ankrahmun's pharaoh, hasn't it?"},
        ["akh"] = {response = "Yes... rings a bell. Has to do with Ankrahmun's pharaoh, hasn't it?"},
        ["kha'zeel"] = {response = "Gosh, these mountains! Can you imagine what they look like to somebody who is moving three inches above the floor? They are so... massive!"},
        ["kha'labal"] = {response = "The Kha'labal is a huge desert to the east. It is a cruel, inhospitable land. Not even a rat could survive there very long."},
        ["lamp"] = {response = "Oh to sleep in warm, comfy lamp! It's been such a long time."},
        ["melchior"] = {response = "Hm. No - doesn't ring a bell."},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) then
               npcHandler:say(keywords[v].response, cid)
               npcHandlerfocus = 0
          end
        end
   return 1
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, RataSayCallback)