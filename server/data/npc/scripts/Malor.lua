local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
NpcSystem.parseParameters(npcHandler)

npcHandler:setMessage(MESSAGE_GREET, "Greetings, human |PLAYERNAME|. My patience with your kind is limited, so speak quickly and choose your words well.")
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, "It might have escaped your limited human perception, but I am already talking to somebody else.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Farewell, human.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Farewell, human. When I have taken my rightful place I shall remember those who served me well. Even if they are only humans.")

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
 
function MalorSayCallback (cid, type, msg)
if (getPlayerStorageValue(cid, 1023) ~= 1) then
   return 0
end

      if (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings') or msgcontains(msg:lower(),'hi')) and (npcHandlerfocus == 0) then
           npcHandler:greet(cid)
      elseif (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings')) and (npcHandlerfocus > 0) and (npcHandlerfocus ~= cid) then
           npcHandler:onGreet(cid)
      elseif (msgcontains(msg:lower(),'bye') or msgcontains(msg:lower(),'farewell')) then
           npcHandler:onFarewell(cid)

------MISSIONS-----

        elseif(msgcontains(msg:lower(),'mission') or msgcontains(msg:lower(),'alesar') or msgcontains(msg:lower(),'work')) and (getPlayerStorageValue(cid, 1037) ~= 1) then
            if (getPlayerStorageValue(cid, 1034) ~= 1) then
                if (getPlayerStorageValue(cid, 1032) == 1) then
                    npcHandler:say("I guess this is the first time I entrust a human with a mission. And such an important mission, too. But well, we live in hard times, and I am a bit short of adequate staff. ...", cid, 1000)
                    npcHandler:say("Besides, Baa'leal told me you have distinguished yourself well in previous missions, so I think you might be the right person for the job. ...", cid, 13000)
                    npcHandler:say("But think carefully, human, for this mission will bring you close to certain death. Are you prepared to embark on this mission?", cid, 23500)
                    npcHandlerfocus = 1
                else
                    npcHandler:say("So you would like to fight for us. Hmm. ...", cid, 1000)
                    npcHandler:say("You show true courage, human, but I will not accept your offer at this point of time.", cid, 7500)
                end
            else
                    npcHandler:say("You haven't finished your final mission yet. Shall I explain it again to you?",cid)
                    npcHandlerfocus = 1
            end
        elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 1) then
                    setPlayerStorageValue(cid, 1034, 1)
                    npcHandler:say("Well, listen. We are trying to acquire the ultimate weapon to defeat Gabel: Fa'hradin's lamp! ...", cid, 1000)
                    npcHandler:say("At the moment it is still in the possession of that good old friend of mine, the Orc King, who kindly released me from it. ...", cid, 9000)
                    npcHandler:say("However, for some reason he is not as friendly as he used to be. You better watch out, human, because I don't think you will get the lamp without a fight. ...", cid, 18500)
                    npcHandler:say("Once you have found the lamp you must enter Ashta'daramai again. Sneak into Gabel's personal chambers and exchange his sleeping lamp with Fa'hradin's lamp! ...", cid, 29500)
                    npcHandler:say("If you succeed, the war could be over one night later!", cid, 40500)
                    npcHandlerfocus = 0
        elseif(msgcontains(msg:lower(),'mission') or msgcontains(msg:lower(),'work') or msgcontains(msg:lower(),'lamp')) and (getPlayerStorageValue(cid, 1037) == 1) then 
            if (getPlayerStorageValue(cid, 1038) ~= 1) then
                    npcHandler:say("Have you found Fa'hradin's lamp and placed it in Malor's personal chambers?",cid)
                    npcHandlerfocus = 2
            end
        elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 2) then
                    npcHandlerfocus = 0
                    setPlayerStorageValue(cid, 1038, 1)
                    npcHandler:say("Well well, human. So you really have made it - you have smuggled the modified lamp into Gabel's bedroom! ...", cid, 1000)
                    npcHandler:say("I never thought I would say this to a human, but I must confess I am impressed. ...", cid, 9500)
                    npcHandler:say("Perhaps I have underestimated you and your kind after all. ...", cid, 17000)
                    npcHandler:say("I guess I will take this as a lesson to keep in mind when I meet you on the battlefield. ...", cid, 23500)
                    npcHandler:say("But that's in the future. For now, I will confine myself to give you the permission to trade with my people whenever you want to. ...", cid, 31500)
                    npcHandler:say("Farewell, human!", cid, 41000)

        elseif(msgcontains(msg:lower(),'permission')) and (getPlayerStorageValue(cid, 1038) == 1) then
                    npcHandler:say('You are welcome to trade with Alesar and Yaman whenever you want to, '.. getPlayerName(cid) ..'!',cid)
                    npcHandlerfocus = 0

        elseif(msgcontains(msg:lower(),'permission')) then
                    npcHandler:say("I have no reason to give you my permission to trade with Alesar or Yaman.",cid)
                    npcHandlerfocus = 0

        elseif(npcHandlerfocus == 1) then
                    npcHandler:say("Your choice.",cid)
                    npcHandlerfocus = 0

        elseif(npcHandlerfocus == 1) then
                    npcHandler:say("Just do it.",cid)
                    npcHandlerfocus = 0

        elseif (msgcontains(msg:lower(),"name")) then
               npcHandler:say("Is it true you don't know who I am? Well, then listen. My name is Malor. ...", cid, 1000)
               npcHandler:say("You should better memorise that name because you are bound to hear it more often in future.", cid, 8500)

        elseif (msgcontains(msg:lower(),"djinn")) then
               npcHandler:say("We are strong and proud. One day we will take our rightful place on the throne of creation, and your vulgar race will either serve us or perish. ...", cid, 1000)
               npcHandler:say("Nothing personal, human. It is a natural process. And you humans will find that the djinn can be just masters.", cid, 11500)

        elseif (msgcontains(msg:lower(),"daraman")) then
               npcHandler:say("Of all human liars and schemers he was the worst. This self-styled prophet single-handedly managed to disunite my race and to spark a bloody civil war. ...", cid, 1000)
               npcHandler:say("If somebody fulfilled a wish for me for a change I would bring him back to life and make him pay.", cid, 12000)

        elseif (msgcontains(msg:lower(),"orc king")) then
               npcHandler:say("Ah yes. My good old friend the foolish orc. He has rendered me a great service, you know? He released me from that accursed lamp! ...", cid, 1000)
               npcHandler:say("In return I have fulfilled three wishes for him, but somehow I can't help the feeling that he is not wonderfully happy about the way things have turned out.", cid, 11000)

        elseif (msgcontains(msg:lower(),"king")) then
               npcHandler:say("I may not have reached my goal yet, but neither has that accursed Gabel. As long as the Marid and Efreet are disunited neither of us can call himself the king of all djinn.")
               npcHandlerfocus = 0

        elseif (msgcontains(msg:lower(),"gods")) then
               npcHandler:say("Are not the creators reflected in their creations? Look around! What do you see? There is nothing but cowardice and treachery in the world of humans. ...", cid, 1000)
               npcHandler:say("How low the gods must be who made them. I have no respect for them.", cid, 12000)

        elseif (msgcontains(msg:lower(),"melchior")) then
               npcHandler:say("Melchior! Hah, that fool! Is he still alive? I never thought the old wretch would make it after I gave him my special treatment and sent him out into the Kha'labal. ...", cid, 1000)
               npcHandler:say("Amazing, really. It has often occurred to me how much humans resemble rats - they are just as hard to kill!", cid, 13000)

        elseif (msgcontains(msg:lower(),"baa'leal")) then
               npcHandler:say("I suppose you have met Baa'leal already? The fact that you have survived that encounter shows that you are surprisingly strong for a human. ...", cid, 1000)
               npcHandler:say("I almost feel some respect for you... Well, almost.", cid, 11500)

        elseif (msgcontains(msg:lower(),"fa'hradin")) then
               npcHandler:say("Fa'hradin is Gabel's lieutenant. I have known him for a long time, and I have always respected him. ...", cid, 1000)
               npcHandler:say("Unfortunately he chose the wrong side when the time to chose sides came. I have not given up hope of winning him over for some reason, but if I meet him on the battlefield I will not hesitate to kill him myself.", cid, 9500)
        end

        local keywords = {
        ["job"] = {response = "I am the true leader of all djinn - perhaps not by birth, but certainly by merit. One day all djinn will come to recognise that I alone deserve to be king."},
        ["gabel"] = {response = "That fool. He thought he'd got rid of me for good. But I'm back, and this time I will finish what I have begun. That weak-willed wimp has held on to power far too long."},
        ["efreet"] = {response = "We are djinn! The true djinn! Those who have not let themselves be fooled by the silver-tongued blathering of that perfidious snake called Daraman."},
        ["marid"] = {response = "The so-called Marid have forgotten what it is like to be djinn! They are weak!"},
        ["malor"] = {response = "That is me. I was away for a long time, but now I am back with a vengeance."},
        ["human"] = {response = "Your race is weak, but incurably treacherous. I will never forgive humanity the fact that it was one of your kind who spread the seed of dissent among the djinn."},
        ["mal'ouquah"] = {response = "Do you like this place? I have built Mal'ouquah as a home for those among my kind who did not fall for Daraman's sugar covered lies. From here I shall rule the world when the time has come."},
        ["ashta'daramai"] = {response = "Ashta'daramai is the fortress of our sworn enemies, the oh so powerful Marid. The day will come when I see its smouldering walls collapse."},
        ["tibia"] = {response = "The world of Tibia is ours by right. I will not rest until we have conquered it."},
        ["zathroth"] = {response = "Our father. He made us a race of masters, not of servants. We will live to fulfill his promise or die trying."},
        ["darashia"] = {response = "Darashia is a very rich city. Once this war is won I will drop by at the Caliph's palace and pay my respects, if you know what I mean."},
        ["scarab"] = {response = "Scarabs are ancient creatures, which is why I respect them. But I will never allow any of these critters to undermine the foundations of my fortress."},
        ["edron"] = {response = "I hear the humans have built impressive cities on the great continent. It looks like many things have changed while I was caught in that stupid lamp."},
        ["thais"] = {response = "I hear the humans have built impressive cities on the great continent. It looks like many things have changed while I was caught in that stupid lamp."},
        ["venore"] = {response = "I hear the humans have built impressive cities on the great continent. It looks like many things have changed while I was caught in that stupid lamp."},
        ["kazordoon"] = {response = "I hear the humans have built impressive cities on the great continent. It looks like many things have changed while I was caught in that stupid lamp."},
        ["carlin"] = {response = "I hear the humans have built impressive cities on the great continent. It looks like many things have changed while I was caught in that stupid lamp."},
        ["ab'dendriel"] = {response = "I hear the humans have built impressive cities on the great continent. It looks like many things have changed while I was caught in that stupid lamp."},
        ["ankrahmun"] = {response = "Even though it always was a human settlement I have always had a soft spot for the place. I am even thinking about making it my capital once I have taken over the world."},
        ["pharaoh"] = {response = "I have heard that pompous pharaoh believes himself to be some sort of deity. That pathetic bonehead a god? Don't make me laugh!"},
        ["ascension"] = {response = "Ascension? That does ring a bell. Isn't that an element of the pharaoh's doctrines."},
        ["rah"] = {response = "Another one of that loony pharaoh's bright ideas. Nothing but nonsense and balderdash."},
        ["uthun"] = {response = "Another one of that loony pharaoh's bright ideas. Nothing but nonsense and balderdash."},
        ["akh"] = {response = "Another one of that loony pharaoh's bright ideas. Nothing but nonsense and balderdash."},
        ["kha'zeel"] = {response = "They say the Kha'zeel mountains have been made by gods. If that is true they must have left long ago, because I have lived here for eons, and I have never met one of them."},
        ["kha'labal"] = {response = "Kha'labal. I do not like that desert. Looking at it brings up bad memories."},
        ["war"] = {response = "Gabel and Fa'hradin thought the war was over when they managed to trap me in that accursed lamp. But they have been a bit rash. After all those years I'm still here, and my thirst for revenge is stronger than ever!"},
        ["alesar"] = {response = "Oh yes, Alesar! I bet Gabel went mad when he learnt that Alesar switched sides. If only I had been there to watch his face."},
        ["lamp"] = {response = "We djinn use them to sleep."},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) then
               npcHandler:say(keywords[v].response, cid)
               npcHandlerfocus = 0
          end
        end
        return 1
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, MalorSayCallback)