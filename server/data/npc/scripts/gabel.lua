local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
NpcSystem.parseParameters(npcHandler)

npcHandler:setMessage(MESSAGE_GREET, "Welcome, human |PLAYERNAME|, to our humble abode.")
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, "Have patience, |PLAYERNAME|. In this world every grain of sand has its place and its time. You may have found the place you have been looking for, but it is not yet your time.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Farewell, stranger. May Uman open your minds and your hearts to Daraman's wisdom!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Farewell, stranger. May Uman open your minds and your hearts to Daraman's wisdom!")

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
 
function GabelSayCallback (cid, type, msg)
if (getPlayerStorageValue(cid, 1002) ~= 1) then
   return 0
end

    if (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings') or msgcontains(msg:lower(),'hi')) and (npcHandlerfocus == 0) then
           npcHandler:greet(cid)
    elseif (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings')) and (npcHandlerfocus > 0) and (npcHandlerfocus ~= cid) then
           npcHandler:onGreet(cid)
    elseif (msgcontains(msg:lower(),'bye') or msgcontains(msg:lower(),'farewell')) then
           npcHandler:onFarewell(cid)
 
-----missions-----

    elseif(msgcontains(msg:lower(),'mission') or msgcontains(msg:lower(),'work') or msgcontains(msg:lower(),'report') or msgcontains(msg:lower(),'spyreport')) and (getPlayerStorageValue(cid, 1011) ~= 1) then
        if (getPlayerStorageValue(cid, 1009) == 1) then
               npcHandlerfocus = 1
               
               npcHandler:say("Sooo. Fa'hradin has told me about your extraordinary exploit, and I must say I am impressed. ...", cid, 1000)
               npcHandler:say("Your fragile human form belies your courage and your fighting spirit. ...", cid, 9000)
               npcHandler:say("I hardly dare to ask you because you have already done so much for us, but there is a task to be done, and I cannot think of anybody else who would be better suited to fulfill it than you. ...", cid, 16000)
               npcHandler:say("Think carefully, human, for this mission will bring you into real danger. Are you prepared to do us that final favour?", cid, 29000)
        else
               
               npcHandler:say("So you would like to fight for us, don't you. Hmm. ...", cid, 1000)
               npcHandler:say("That is a noble resolution you have made there, human, but I'm afraid I cannot accept your generous offer at this point of time. ...", cid, 7000)
               npcHandler:say("Do not get me wrong, but I am not the kind of guy to send an inexperienced soldier into certain death! So you might ask around here for a more suitable mission.", cid, 17000)
        end

   elseif(msgcontains(msg:lower(),"yes")) and (npcHandlerfocus == 1) then
               npcHandlerfocus = 0
               setPlayerStorageValue(cid, 1011, 1)
               
               npcHandler:say("All right. Listen! Thanks to Rata'mari's report we now know what Malor is up to: he wants to do to me what I have done to him - he wants to imprison me in Fa'hradin's lamp! ...", cid, 1000)
               npcHandler:say("Of course, that won't happen. Now, we know his plans. ...", cid, 13000)
               npcHandler:say("But I am aiming at something different. We have learnt one important thing: At this point of time, Malor does not have the lamp yet, which means it is still where he left it. We need that lamp! If we get it back we can imprison him again! ...", cid, 19000)
               npcHandler:say("From all we know the lamp is still in the Orc King's possession! Therefore I want to ask you to enter the well guarded halls over at Ulderek's Rock and find the lamp. ...", cid, 34500)
               npcHandler:say("Once you have acquired the lamp you must enter Mal'ouquah again. Sneak into Malor's personal chambers and exchange his sleeping lamp with Fa'hradin's lamp! ...", cid, 46200)
               npcHandler:say("If you succeed, the war could be over one night later! I and all djinn will be in your debt forever! May Daraman watch over you!", cid, 57500)

   elseif(npcHandlerfocus == 1) then
               npcHandler:say("As you wish.", cid)
               npcHandlerfocus = 0

   elseif(msgcontains(msg:lower(),'mission') or msgcontains(msg:lower(),'lamp') or msgcontains(msg:lower(),'report') or msgcontains(msg:lower(),'spyreport') or msgcontains(msg:lower(),'work')) and (getPlayerStorageValue(cid, 1011) == 1)  and (getPlayerStorageValue(cid, 1015) ~= 1) then
       if (getPlayerStorageValue(cid, 1014) == 1) then
               npcHandler:say("Have you found Fa'hradin's lamp and placed it in Malor's personal chambers?",cid)
               npcHandlerfocus = 2
       else
               npcHandler:say("You haven't finished your final mission yet. Shall I explain it again to you?",cid)
               npcHandlerfocus = 1
       end

   elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 2) then
               npcHandlerfocus = 0
               setPlayerStorageValue(cid, 1015, 1)
               
               npcHandler:say("Daraman shall bless you and all humans! You have done us all a huge service! Soon, this awful war will be over! ...", cid, 1000)
               npcHandler:say("Know, that from now on you are considered one of us and are welcome to trade with Haroun and Nah'bob whenever you want to!", cid, 10000)

   elseif(npcHandlerfocus == 2) then
               npcHandler:say("Don't give up! May Daraman watch over you!", cid)
               npcHandlerfocus = 0

   elseif(msgcontains(msg:lower(),'permission')) then
               npcHandlerfocus = 0
        if (getPlayerStorageValue(cid, 1015) ~= 1) then
               npcHandler:say('I am not yet convinced, that we can trust you, '.. getPlayerName(cid) ..'. Only trusted people are allowed to trade with Haroun and Nah\'Bob.')
        else
               npcHandler:say('You are welcome to trade with Haroun and Nah\'bob whenever you want to, '.. getPlayerName(cid) ..'!')
        end

   elseif(msgcontains(msg:lower(),"fa'hradin lamp")) then
               npcHandler:say("Ah yes. This lamp was his masterpiece. It was so satisfying to see that dirty little schemer fall for a ploy himself. If only he'd never come back!")
               npcHandlerfocus = 0

   elseif(msgcontains(msg:lower(),"lamp")) then
               npcHandler:say("We djinn use them to sleep. Well, you may find it is a funny notion to sleep in a lamp, but then, for us it seems just as silly to sleep in a longish wooden construction with a fluffy mattress on top.")
               npcHandlerfocus = 0

   elseif (msgcontains(msg:lower(),"war")) then
               
               npcHandler:say("We had thought the war was over for good when Malor was finally imprisoned. And now he is free again! How could it ever come so far. ...", cid, 1000)
               npcHandler:say("But well - nothing is lost. I have no illusions about Malor's intentions, but I'm not afraid. We have beaten him once and we can beat him again!", cid, 11480)

   elseif (msgcontains(msg:lower(),"malor")) then
               
               npcHandler:say("The accursed usurper is free! I can't believe it! To think that power-hungry cockroach is once again roaming the world! ...", cid, 1000)
               npcHandler:say("I could forgive him his evil schemes if he had not led my people into this tragic fratricidal war!", cid, 10765)

   elseif (msgcontains(msg:lower(),"ashta'daramai") or msgcontains(msg:lower(),"abode")) then
               
               npcHandler:say("This place is a gift of Daraman to the djinn people. Oh, he did not build it himself, of course. It was us Marid who did it. We erected it on the place where once stood my old palace. ...", cid, 1000)
               npcHandler:say("Its serene majesty is a visual expression of the inner peace and light that are bestowed by the great Daraman's teachings.", cid, 14285)

   elseif (msgcontains(msg:lower(),"orc king")) then
               
               npcHandler:say("The power hungry fool released Malor from his prison, and now the evil is upon us once again! He should have known better than to believe Malor's sugar covered lies. ...", cid, 1000)
               npcHandler:say("But what can you expect from a power-crazed, stupid-as-a-brick orc. Nothing but blockheads the lot of them.", cid, 13295)

   elseif (msgcontains(msg:lower(),"king")) then
               npcHandler:say("Some call me a king, even though I do not like the title. Daraman has taught us to think little of worldly matters such as power or station in life.")
               npcHandlerfocus = 0

   elseif (msgcontains(msg:lower(),"human")) then
               
               npcHandler:say("For a long time we have despised and oppressed your kind. I still feel ashamed for the things we have done in those dark days. The gods be praised that they sent Daraman to open our eyes. ...", cid, 1000)
               npcHandler:say("I know that one day djinn and humans will live in peaceful co-existence.", cid, 14505)

   elseif (msgcontains(msg:lower(),"djema")) then           
               npcHandler:say("Poor thing. She's an orphan you know. We took her to us when she was a child, and we have never regretted it. So fresh and lively - she has really brought some life to this place. ...", cid, 1000)
               npcHandler:say("In a way it was an experiment, you know. A human living among djinn. I suppose it worked well, but perhaps too well. ...", cid, 14065)
               npcHandler:say("Now she has grown on me, and I'm loath to let her go. <sighs> Sometimes I wonder if it was right to make her live in this place after all.", cid, 23465)
   elseif (msgcontains(msg:lower(),"alesar")) then               
               npcHandler:say("Alesar... Alesar. You know, it pains me to even hear this name. When he left I lost both my best smith and a personal friend. I don't know what is worse. ...", cid, 1000)
               npcHandler:say("And the worst is, to this day I have never managed to figure out why he left. I refuse to believe that Malor could bribe him in any way. If only I knew.", cid, 12635)
   elseif (msgcontains(msg:lower(),"fa'hradin")) then
               
               npcHandler:say("He is my trusted counsellor and friend. If you would like to help us you should talk to him. ...", cid, 1000)
               npcHandler:say("By the way - don't worry if his behaviour appears a bit odd sometimes. He is incurably eccentric. Always has been. I think it is a job hazard of being a wizard.", cid, 9280)

   elseif (msgcontains(msg:lower(),"rata'mari")) then
               
               npcHandler:say("So you know about him. Hm. Since nobody else knows about him Fa'Hradin must have told you. ...", cid, 1000)
               npcHandler:say("I suppose he had his reasons, but I would appreciate it if you did not tell anybody about him. If Malor found about him, he would start a little rat hunt I guess.", cid, 9170)
   end

        local keywords = {
        ["name"] = {response = "I am known as Gabel. I have borne this name for as long as I remember, and believe me - that is quite some time."},
        ["gabel"] = {response = "I have often thought about changing this name because... Ah well <sighs>. Let us talk about more cheerful things."},
        ["job"] = {response = "I am the true leader of all djinn, both in worldly and in spiritual matters.<sighs> Unfortunately, there are those among my kind who disagree."},
        ["djinn"] = {response = "Once we were a mighty race. I like to think that one day we will return to our former glory, but as long as this tragic war is not won that is not likely to happen."},
        ["leader"] = {response = "Some call me a king, even though I do not like the title. Daraman has taught us to think little of worldly matters such as power or station in life."},
        ["daraman"] = {response = "Daraman may have been just a human, but he bore in him the spark of the divine. We have paid a heavy price for following his teachings, but I have never felt any regret for my decision."},
        ["marid"] = {response = "We, the Marid, are the true inheritors of the djinn legacy. Those errant fools who call themselves the Efreet are nothing but usurpers."},
        ["efreet"] = {response = "Our fallen brethren claim they are different, but I have not given up hope yet that all djinn will be reunited one day! If only they saw the light!"},
        ["mal'ouquah"] = {response = "The Mal'ouquah is the Efreets' fortress. Malor built it when it was clear that the djinns had definitely split in two fractions. I will personally raze it to the ground once we have finally won this disastrous war!"},
        ["kha'zeel"] = {response = "These majestic mountains were chosen by the gods as a vantage point from which they watched their creation."},
        ["kha'labal"] = {response = "Ah yes - that horrid desert. I still recall how beautiful it was back in the times before the struggle it began. It was a land full of song and bliss - a veritable paradise. But look at it now. <sighs> It is such a shame."},
        ["zathroth"] = {response = "The name brings up painful memories. I'd rather not talk about this subject."},
        ["gods"] = {response = "For a long time I found it difficult to love them. But Daraman has opened my eyes."},
        ["tibia"] = {response = "The world of Tibia is like a gemstone carved by the greatest of all craftsmen. It is sad that it took a human to make me realise its perfection."},
        ["darashia"] = {response = "Darashia was nothing but a forlorn pool of mud last time I passed there. I hear it has now risen to great wealth and glory. Perhaps the Caliph is more open to the true creed than that dangerous fool, the pharaoh of Ankrahmun."},
        ["scarab"] = {response = "The scarabs are ancient beings, as ancient as ourselves. We djinns feel a lot of respect for them."},
        ["edron"] = {response = "I have often heard of the splendid cities the humans have erected on the continent. I would like to visit them one day and send them a message of peace and friendship in the name of my people."},
        ["thais"] = {response = "I have often heard of the splendid cities the humans have erected on the continent. I would like to visit them one day and send them a message of peace and friendship in the name of my people."},
        ["venore"] = {response = "I have often heard of the splendid cities the humans have erected on the continent. I would like to visit them one day and send them a message of peace and friendship in the name of my people."},
        ["kazordoon"] = {response = "I have often heard of the splendid cities the humans have erected on the continent. I would like to visit them one day and send them a message of peace and friendship in the name of my people."},
        ["carlin"] = {response = "I have often heard of the splendid cities the humans have erected on the continent. I would like to visit them one day and send them a message of peace and friendship in the name of my people."},
        ["ab'dendriel"] = {response = "I have often heard of the splendid cities the humans have erected on the continent. I would like to visit them one day and send them a message of peace and friendship in the name of my people."},
        ["ankrahmun"] = {response = "I haven't seen the venerable city in a long time. I would like to visit it again, but I can't help the feeling that I would not be welcome these days."},
        ["pharaoh"] = {response = "The new pharaoh seems to hold some very eccentric ideas about life and death. I have a feeling that his so-called teachings are nothing but an ignorant perversion of the true creed."},
        ["palace"] = {response = "Stay clear of that place. I have heard bad things about it."},
        ["temple"] = {response = "In these heretic times the temple is devoted to the teachings of that pompous pharaoh. I haven't been there for a long time."},
        ["ascension"] = {response = "Apparently that is what the followers of the pharaoh are striving for. It has to do with his heretical teachings."},
        ["rah"] = {response = "That's just some heretic drivel. Don't ask me about it."},
        ["uthun"] = {response = "That's just some heretic drivel. Don't ask me about it."},
        ["akh"] = {response = "That's just some heretic drivel. Don't ask me about it."},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) then
               npcHandler:say(keywords[v].response, cid)
               npcHandlerfocus = 0
          end
        end
   return 1
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, GabelSayCallback)