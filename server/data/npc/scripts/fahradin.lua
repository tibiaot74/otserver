local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
NpcSystem.parseParameters(npcHandler)

npcHandler:setMessage(MESSAGE_GREET, "Aaaah... what have we here. A human - interesting. And such an ugly specimen, too... All right, human |PLAYERNAME|. How can I help you?")
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, "Wait human. I'll take care of you in a minute, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Farewell, human.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Farewell, human. I will always remember you. Unless I forget you, of course.")

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
 
function FahradinSayCallback (cid, type, msg)
if (getPlayerStorageValue(cid, 1002) ~= 1) then
   return 0
end

    if (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings') or msgcontains(msg:lower(),'hi')) and (npcHandlerfocus == 0) then
           npcHandler:greet(cid)
    elseif (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings')) and (npcHandler.focus > 0) and (npcHandler.focus ~= cid) then
           npcHandler:onGreet(cid)
    elseif (msgcontains(msg:lower(),'bye') or msgcontains(msg:lower(),'farewell')) then
           npcHandler:onFarewell(cid)

-----missions---

    elseif(msgcontains(msg:lower(),'mission') or msgcontains(msg:lower(),'work') or msgcontains(msg:lower(),"bo'ques")) and (getPlayerStorageValue(cid, 1006) ~= 1) then
            if (getPlayerStorageValue(cid, 1005) == 1) then
                setPlayerStorageValue(cid, 1006, 1)

                npcHandler:say("I have heard some good things about you from Bo'ques. But I don't know. ...", cid, 1000)
                npcHandler:say("Well, all right. I do have a job for you. ...", cid, 8000)
                npcHandler:say("In order to stay informed about our enemy's doings, we have managed to plant a spy in Mal'ouquah. ...", cid, 13500)
                npcHandler:say("He has kept the Efreet and Malor under surveillance for quite some time. ...", cid, 22000)
                npcHandler:say("But unfortunately, I have lost contact with him months ago. ...", cid, 29000)
                npcHandler:say("I do not fear for his safety because his cover is foolproof, but I cannot contact him either. This is where you come in. ...", cid, 35500)
                npcHandler:say("I need you to infiltrate Mal'ouqhah, contact our man there and get his latest spyreport. The password is PIEDPIPER. Remember it well! ...", cid, 45000)
                npcHandler:say("I do not have to add that this is a dangerous mission, do I? If you are discovered expect to be attacked! So good luck, human!", cid, 55000)
            else
                npcHandler:say("Looking for work, are you? Well, it's very tempting, you know, but I'm afraid we do not really employ beginners. Perhaps our cook could need a helping hand in the kitchen.", cid)
            end

    elseif(msgcontains(msg:lower(),'mission') or msgcontains(msg:lower(),'work') or msgcontains(msg:lower(),'spy') or msgcontains(msg:lower(),'report')) and (getPlayerStorageValue(cid, 1006) == 1) then
        if (getPlayerStorageValue(cid, 1008) == 1) then
                npcHandler:say("Did you already retrieve the spyreport?",cid)
                npcHandlerfocus = 1
        else
                npcHandler:say("Did you already talk to Gabel about the report? I think he will have further instructions for you.",cid)
                npcHandlerfocus = 0
        end

    elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 1) then
        if (getPlayerStorageValue(cid, 1008) == 1) then 
                npcHandlerfocus = 0
				doPlayerRemoveItem(cid,2345,1)
                setPlayerStorageValue(cid, 1009, 1)             

                npcHandler:say("You really have made it? You have the report? How come you did not get slaughtered? I must say I'm impressed. Your race will never cease to surprise me. ...", cid, 1000)
                npcHandler:say("Well, let's see. ...", cid, 12000)
                npcHandler:say("I think I need to talk to Gabel about this. I am sure he will know what to do. Perhaps you should have a word with him, too.", cid, 16500)
        else
                npcHandlerfocus = 0

                npcHandler:say("Don't waste any more time. We need the spyreport of our man in Mal'ouquah as soon as possible! ...", cid, 1000)
                npcHandler:say("Also don't forget the password to contact our man: PIEDPIPER!", cid, 9000)
        end
    elseif (msgcontains(msg:lower(),"mal'ouquah")) then
                npcHandlerfocus = 0
        if (getPlayerStorageValue(cid, 1006) ~= 1) then
                npcHandler:say("Mal'ouquah is Malor's fortress which lies to the south. I know it well even though I have never been there myself. Insider information, you know.",cid)
        else
                npcHandler:say("Mal'ouquah is Malor's fortress which lies to the south. Of course you cannot enter it through the front door. But there's also an unguarded back door in the north-west corner of the fortress...",cid)
        end

    elseif (msgcontains(msg:lower(),"fa'hradin lamp")) then
            npcHandlerfocus = 0
            npcHandler:say("I hate to flatter myself, but that lamp was a masterpiece. Malor would have been imprisoned in it for the rest of his miserable life if it had not been for that nincompoop who calls himself an orc king. That foolish troglodyte!",cid)
    elseif (msgcontains(msg:lower(),"fa'hradin")) then
            npcHandlerfocus = 0
            npcHandler:say("Yes, that is me. It seems you have heard my name before.",cid)
    elseif (msgcontains(msg:lower(),"lamp")) then
            npcHandlerfocus = 0
            npcHandler:say("Ah yes. We djinn sleep in lamps. We have a natural ability to dematerialise, you see.",cid)

    elseif (msgcontains(msg:lower(),"efreet")) then

           npcHandler:say("I have not be been able to figure out exactly why the Efreet have developed a different skin colour. ...", cid, 1000)
           npcHandler:say("This poses an interesting scientific problem, you know. Perhaps it is a magical effect, but I have a feeling that there are other forces at work here.", cid, 9500)

    elseif (msgcontains(msg:lower(),"human")) then

           npcHandler:say("You are a curious species: Weak, yet strong. Stupid, yet clever. Evil, yet good. Fascinating, really. ...", cid, 1000)
           npcHandler:say("For thousands of years we regarded the northern continent as barbaric and wild. ...", cid, 9500)
           npcHandler:say("And all of sudden there are roads and pastures and mighty cities. The problem with us djinn is that we always underestimate other species, especially humans.", cid, 17000)

    elseif (msgcontains(msg:lower(),"zathroth")) then

           npcHandler:say("He created our race, but we find it hard to love him. Sometimes I think that whole war has erupted because there is something like a design flaw in us djinns, an inconsistency in the way we are. ...", cid, 1000)
           npcHandler:say("I have never been able to put my finger on it, but it keeps me wondering...", cid, 14000)

    elseif (msgcontains(msg:lower(),"tibia")) then

           npcHandler:say("Eons ago when I was still young I felt the world was a place of wonder and joy. Now all I see is a badly working system full of design flaws. ...", cid, 1000)
           npcHandler:say("Must have been the first world the gods have created. Who knows? Perhaps they have learnt from their mistakes, and they are creating a better world somewhere else?", cid, 11500)

    elseif (msgcontains(msg:lower(),"daraman")) then

           npcHandler:say("I have met him myself. He was a sharp thinker and a charismatic conversationalist. ...", cid, 1000)
           npcHandler:say("I suppose he never managed to convince me quite as thoroughly as he managed to convince Gabel, but I came to admire his amazing personal integrity. ...", cid, 8500)
           npcHandler:say("In the end I chose to follow his creed because I felt that we djinn lacked something, and I thought that perhaps Daraman had an answer.", cid, 19500)

    elseif (msgcontains(msg:lower(),"darashia")) then

           npcHandler:say("Darashia is comparatively young. The local ruler managed to establish his own little caliphate thanks to the riches he accumulated. ...", cid, 1000)
           npcHandler:say("As long as he continues to control the eastern trade routes Darashia will continue to flourish.", cid, 11000)

    elseif (msgcontains(msg:lower(),"scarab")) then

           npcHandler:say("An interesting species. Oh, they are as thick as two short planks, of course, but there is definitely something magic about them. ...", cid, 1000)
           npcHandler:say("I have not carried out many studies, however, because dissecting scarabs is a real hassle.", cid, 11000)

    elseif (msgcontains(msg:lower(),"palace")) then

           npcHandler:say("The pharaoh's palace in Ankrahmun is an impressive building. At least that is how I remember it to be. ...", cid, 1000)
           npcHandler:say("I suppose it is a little less cheerful these days, with all that undead riff-raff roaming its halls.", cid, 9500)

    elseif (msgcontains(msg:lower(),"war")) then

           npcHandler:say("For a long time it seemed that the war was over for good. But now that Malor is free again he will surely kindle the flame of war again. ...", cid, 1000)
           npcHandler:say("Damn that foolish orc. If I manage to get hold of him he will be turned into something much worse than a slime.", cid, 11500)

    elseif (msgcontains(msg:lower(),"baa'leal")) then

           npcHandler:say("Oh, you just have to love that djinn. We have met on the battlefield on half a dozen occasions, and he lost each single one of these battles. ...", cid, 1000)
           npcHandler:say("To be sure, he is a great warrior, but he is also lousy general and a complete dunce. As long as he is Malor's commander-in-chief I think we're safe.", cid, 11500)
    end

        local keywords = {
        ["name"] = {response = "I am known as Fa'hradin."},
        ["job"] = {response = "Well, you could say I am the wizard of the Marid. Of course, I know that all djinn are magical creatures. But let us put it this way: I am slightly better at wielding magic then your average djinn in the street."},
        ["djinn"] = {response = "Our race is in a deplorable state at the moment. However, it is interesting from a scientific point of view. I am really curious to see if the Efreet and the Marid are really going to develop into two completely different species..."},
        ["marid"] = {response = "That is what we call ourselves. We like to think of ourselves as the true inheritors of the djinn legacy."},
        ["gabel"] = {response = "He is our leader. He does have his mistakes, but then he always tries to do what he thinks is right, and I suppose that makes him a good leader."},
        ["king"] = {response = "Djinns do not have kings. Gabel has long abdicated the title because of his convictions, and Malor... Well, I suppose he would not refuse to take the crown, but I doubt he will ever get a chance to do so."},
        ["malor"] = {response = "That treacherous snake has been waiting for a chance to seize power for as long as I can remember. He and Gabel used to be as close as brothers, you know."},
        ["ashta'daramai"] = {response = "That is what this place is called. It is not difficult to guess that that name was not my idea."},
        ["edron"] = {response = "I am not much of a traveller, but I would like to see the northern cities everbody is talking about. Perhaps one day I will do that. Oh, I will use some kind of magical disguise, of course."},
        ["thais"] = {response = "I am not much of a traveller, but I would like to see the northern cities everbody is talking about. Perhaps one day I will do that. Oh, I will use some kind of magical disguise, of course."},
        ["venore"] = {response = "I am not much of a traveller, but I would like to see the northern cities everbody is talking about. Perhaps one day I will do that. Oh, I will use some kind of magical disguise, of course."},
        ["kazordoon"] = {response = "I am not much of a traveller, but I would like to see the northern cities everbody is talking about. Perhaps one day I will do that. Oh, I will use some kind of magical disguise, of course."},
        ["carlin"] = {response = "I am not much of a traveller, but I would like to see the northern cities everbody is talking about. Perhaps one day I will do that. Oh, I will use some kind of magical disguise, of course."},
        ["ab'dendriel"] = {response = "I am not much of a traveller, but I would like to see the northern cities everbody is talking about. Perhaps one day I will do that. Oh, I will use some kind of magical disguise, of course."},
        ["ankrahmun"] = {response = "That is one of the oldest human settlements in the whole of Tibia. I understand it is currently ruled by the pharaoh - some sort of undead priest-king. I am sure that must be a charming fellow."},
        ["ascension"] = {response = "A fundamental part of the pharaoh's cult. I have not studied it in any detail, though."},
        ["rah"] = {response = "Another cornerstone of the undead pharaoh's theological theories. I do not know much more about it, I'm afraid."},
        ["uthun"] = {response = "Another cornerstone of the undead pharaoh's theological theories. I do not know much more about it, I'm afraid."},
        ["akh"] = {response = "Another cornerstone of the undead pharaoh's theological theories. I do not know much more about it, I'm afraid."},
        ["kha'zeel"] = {response = "None of the mountains here has developed naturally. The whole range has been raised by using powerful magic, and a lot of this magic lingers to this very day. A great place to be a wizard, but a dangerous place to travel."},
        ["kha'labal"] = {response = "The Kha'labal used to be a paradise. I remember it well. The fact that it is a barren desert today might give you an idea of the things that happened during the war."},
        ["melchior"] = {response = "Ah. I remember him. A trader, was he not? I haven't seen him for a long time."},
        ["alesar"] = {response = "That name brings up bad memories. I never really liked him, but you just had to admire his skills at the forge. His desertion was a great loss for our cause."},
        ["rata'mari"] = {response = "Ah yes. Have you seen him? One of my best works so far. Nobody will ever suspect he is in fact a transformed djinn. The only problem is I'm much better with transforming people into other forms than with transforming them back. Poor fellow."},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) then
               npcHandler:say(keywords[v].response, cid)
               npcHandlerfocus = 0
          end
        end
    return 1
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, FahradinSayCallback)