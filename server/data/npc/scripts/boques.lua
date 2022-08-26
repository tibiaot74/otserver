local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

NpcSystem.parseParameters(npcHandler)

npcHandler:setMessage(MESSAGE_GREET, "Hey! A human! What are you doing in my kitchen, |PLAYERNAME|?")
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, "Whoa. Do I look as if I had two heads? Only one at a time, |PLAYERNAME|!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Now, where was I?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Goodbye. I am sure you will come back for more. They all do.")

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
  
function BoquesSayCallback (cid, type, msg)
if (getPlayerStorageValue(cid, 1002) ~= 1) then
   return 0
end

    if (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings') or msgcontains(msg:lower(),'hi')) and (npcHandlerfocus == 0) then
           npcHandler:greet(cid)
    elseif (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings')) and (npcHandler.focus > 0) and (npcHandler.focus ~= cid) then
           npcHandler:onGreet(cid)
    elseif (msgcontains(msg:lower(),'bye') or msgcontains(msg:lower(),'farewell')) then
           npcHandler:onFarewell(cid)

    elseif(msgcontains(msg:lower(),'mission') or msgcontains(msg:lower(),'recipe')) and (getPlayerStorageValue(cid, 1005) ~= 1) then
           npcHandlerfocus = 1

           npcHandler:say("My collection of recipes is almost complete. There are only but a few that are missing. ...", cid, 1000)
           npcHandler:say("Hmmm... now that we talk about it. There is something you could help me with. Are you interested?", cid, 9000)

    elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 1) then
           npcHandlerfocus = 0
           setPlayerStorageValue(cid, 1003, 1)                         

           npcHandler:say("Fine! Even though I know so many recipes, I'm looking for the description of some dwarven meals. ...", cid, 1000)
           npcHandler:say("So, if you could bring me a cookbook of the dwarven kitchen I will reward you well.", cid, 9200)

    elseif (npcHandlerfocus == 1) then
           npcHandler:say("Well, too bad.", cid)
           npcHandlerfocus = 0

    elseif(msgcontains(msg:lower(),'book') or msgcontains(msg:lower(),'cookbook')) and (getPlayerStorageValue(cid, 1003) == 1) then
        if (getPlayerStorageValue(cid, 1005) == 1) then
           npcHandler:say("Thanks again, for bringing me that book.",cid)
           npcHandlerfocus = 0
        else
           npcHandler:say("Do you have the cookbook of the dwarven kitchen with you? Can I have it?",cid)
           npcHandlerfocus = 2
        end

    elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 2) then
        if (getPlayerStorageValue(cid, 1005) ~= 1) then
           npcHandlerfocus = 0
           setPlayerStorageValue(cid, 1005, 1)
		   doPlayerRemoveItem(cid,2347,1)
           doPlayerAddItem(cid,2146,3)
           npcHandler:say("The book! You have it! Let me see! <browses the book> ...", cid, 1000)
           npcHandler:say("Dragon Egg Omelette, Dwarven beer sauce... it's all there. This is great! Here is your well-deserved reward. ...", cid, 7000)
           npcHandler:say("Incidentally, I have talked to Fa'hradin about you during dinner. I think he might have some work for you. Why don't you talk to him about it?", cid, 16000)
        else
           npcHandler:say("Too bad. I must have this book.", cid)
           npcHandlerfocus = 0
        end

    elseif (msgcontains(msg:lower(),"job") or msgcontains(msg:lower(),"cook")) then

           npcHandler:say("I'm preparing the food for all djinn in Ashta'daramai. ...", cid, 1000)
           npcHandler:say("Therefore I'm what is commonly called a cook, although I do not like that word too much. It is vulgar. I prefer to call myself 'chef'.", cid, 7500)

    elseif (msgcontains(msg:lower(),"efreet")) then

           npcHandler:say("A bunch of ignorants and primitives, that's what they are. You should see the things they eat! ...", cid, 1000)
           npcHandler:say("You know they serve ketchup with just about every kind of meal! Ketchup! Oh, those barbarians.", cid, 9000)

    elseif (msgcontains(msg:lower(),"human")) then

           npcHandler:say("I totally agree with Gabel that djinn and humans can learn from each other. ...", cid, 1000)
           npcHandler:say("Take cooking, for example. It has such a long tradition among humans - even I could still learn a thing or two from the famous cooks at king Tibianus' court!", cid, 8000)

    elseif (msgcontains(msg:lower(),"zathroth")) then

           npcHandler:say("That is a sad story, and like most djinn I dislike talking about it. Let's put it this way. Once there was a great cook who worked hard to prepare the finest meal of his life. ...", cid, 1000)
           npcHandler:say("But when he found that the product of his efforts did not meet his expectations he just ditched it even though it was wonderfully unique in its own special way. ...", cid, 13000)
           npcHandler:say("You know what I think? I think Zathroth was a bad cook.", cid, 24500)

    elseif (msgcontains(msg:lower(),"daraman")) then

           npcHandler:say("Ah yes. That human WAS special, believe me. Did you know I talked to him myself, back in those days? In fact, I even had an argument with him because he dared to insult my work! He drove me mad when he called me a self-indulgent glutton. ...", cid, 1000)
           npcHandler:say("But you know, eventually we came to respect each other! He taught me to stress quality rather than quantity, and he came to appreciate my 'Chili con Cobra'. Today I know that having met him was a major step forward in my development as a culinary artist.", cid, 16500)

    elseif (msgcontains(msg:lower(),"kha'zeel")) then

           npcHandler:say("These mountains are a nice place to live in, but food-wise they are pretty lousy. We basically import everything we eat from the lowlands, trading them for magic trinkets and for gold. ...", cid, 1000)
           npcHandler:say("The only plants that grow well in these mountains are potatoes, and they are not really my idea of Haute Cuisine.", cid, 14000)
    end

        local keywords = {
        ["name"] = {response = "My name is Bo'ques. Perhaps you know my name from a restaurant guide."},
        ["bo'ques"] = {response = "You want Bo'ques? Well, you have found him, I'd say."},
        ["chef"] = {response = "Chef sounds nice, doesn't it? Well... I must admit I do not really know what it means, but it certainly sounds classy."},
        ["food"] = {response = "I know many recipes for preparing the finest food on Darama and maybe even whole Tibia!"},
        ["king"] = {response = "Gabel used to be king, you know. I must confess I miss those days a bit because I was allowed to carry the title of his royal majesty's personal cook. Ah, those were the days."},
        ["gabel"] = {response = "He is my boss. A most loyal customer and a real con... conni... well, a man of taste, at any rate. His favourite dish is Scarabée au Vin served with onions and rice."},
        ["connoisseur"] = {response = "Yes! That's it! I have always trouble with pronouncing that damn word. A conno... conni... ah, hang it all!"},
        ["marid"] = {response = "That is us - the loyalists who have have remained faithful to Gabel and to good cooking."},
        ["malor"] = {response = "That accursed traitor! I think there will never be peace until he is completely vanquished. If only he would allow me to cook for him. I would fix him a dinner he would never forget."},
        ["mal'ouquah"] = {response = "Ah yes. The efreets' notorious fortress. I have never been there. That is no place for an artist such as myself."},
        ["ashta'daramai"] = {response = "That is our little fortress - our home. Nice, isn't it? I find it inspirational, although I find the culinary facilities could do with some improvements."},
        ["tibia"] = {response = "It may be that this world is wide and full of adventure, but to be honest I am not at all keen to see it myself. A comfortable lamp to sleep in and a well equipped kitchen is all I need."},
        ["darashia"] = {response = "I have heard good things about this place. I understand the Caliph is a true gourmet. People who eat good food can't be bad, that's what I say."},
        ["scarab"] = {response = "Ah yes. I like them well. Especially with a good sauce or in a stew. But they have to be young! Have you tried ancient scarab? Their meat is impossible to chew unless you have teeth made of titanium."},
        ["edron"] = {response = "Ah, the northern cities. One day I will start an extensive culinary expedition there. I have this dream of writing some sort of culinary guide, you know. Isn't that a great idea?"},
        ["thais"] = {response = "Ah, the northern cities. One day I will start an extensive culinary expedition there. I have this dream of writing some sort of culinary guide, you know. Isn't that a great idea?"},
        ["venore"] = {response = "Ah, the northern cities. One day I will start an extensive culinary expedition there. I have this dream of writing some sort of culinary guide, you know. Isn't that a great idea?"},
        ["kazordoon"] = {response = "Ah, the northern cities. One day I will start an extensive culinary expedition there. I have this dream of writing some sort of culinary guide, you know. Isn't that a great idea?"},
        ["carlin"] = {response = "Ah, the northern cities. One day I will start an extensive culinary expedition there. I have this dream of writing some sort of culinary guide, you know. Isn't that a great idea?"},
        ["ab'dendriel"] = {response = "Ah, the northern cities. One day I will start an extensive culinary expedition there. I have this dream of writing some sort of culinary guide, you know. Isn't that a great idea?"},
        ["ankrahmun"] = {response = "No djinn who is in his right state of mind would want to go there? What for? The land is ruled by an undead nut case, and from what I have heard his subjects are no better."},
        ["pharaoh"] = {response = "Apparently he is an undead! And what's worse, he actually chose that fate for himself! Undead! Imagine that! Never sleep, never laugh, and worst of all: Never eat! What a crackpot!"},
        ["palace"] = {response = "Who would like to live in a palace if there is never the delicious smell of freshly prepared food! I would not want to live there. Not for love nor for money."},
        ["ascension"] = {response = "As far as I know that is one of the pharaoh's crazy ideas. Just a load of baloney."},
        ["rah"] = {response = "Hm. Is that some exotic spice? Hang on, I know! It is a kind of lizard stew - right?"},
        ["uthun"] = {response = "Hm. Is that some exotic spice? Hang on, I know! It is a kind of lizard stew - right?"},
        ["akh"] = {response = "Hm. Is that some exotic spice? Hang on, I know! It is a kind of lizard stew - right?"},
        ["kha'labal"] = {response = "Such a shame about that land. It wasn't always a desert, you know. That land was garden, a veritable paradise. Just the thought of the fruit that used to grow there makes my mouth water <sighs>. Well, guess who messed it up."},
        ["war"] = {response = "I have never been much of a warrior, but I will storm into battle swinging my meat cleaver if necessary. We simply must win this war!"},
        ["melchior"] = {response = "Ah yes, the trader - right? I remember him. He used to travel the mountains with his mule. A tough haggler and a real skinflint, he was. I thought he had fallen down a cliff with all his money."},
        ["alesar"] = {response = "Ah - that guy. You probably don't know it, but nobody around here likes to hear that name. It brings back painful memories, you know. His betrayal was such a heavy blow to us. I think I will never understand what made him do it? It is a mystery."},
        ["lamp"] = {response = "You would not believe it, but those lamps are actually quite comfy. And on top of that they are immensely practical! Did you ever try to stash one of your beds into your pocket?"},
        ["fa'hradin"] = {response = "That djinn is so engrossed in his work! I constantly have to remind him to eat because if I didn't he would simply forget. Forgetting to eat! Can you imagine that?"},
        ["djema"] = {response = "Djema is a nice girl, but she eats so little. It's frustrating, really. Humans and their little stomachs!"},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) then
               npcHandler:say(keywords[v].response, cid)
               npcHandlerfocus = 0
          end
        end
    return 1
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, BoquesSayCallback)