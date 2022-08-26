function onStartup()
 local Dia = os.date("%A")
 if Dia == "Monday" then -- Segunda-Feira
 RashidPos = {x = 100, y = 100, z = 7} -- Svargrond 
 elseif Dia == "Tuesday" then -- Terça-Feira 
 RashidPos = {x = 100, y = 100, z = 7} -- Liberty Bay 
 elseif Dia == "Wednesday" then -- Quarta-Feira 
 RashidPos = {x = 100, y = 100, z = 7} -- Port Hope 
 elseif Dia == "Thursday" then -- Quinta-Feira 
 RashidPos = {x = 100, y = 100, z = 7} -- Ankrahmun 
 elseif Dia == "Friday" then -- Sexta-Feira 
 RashidPos = {x = 100, y = 100, z = 7} -- Darashia 
 elseif Dia == "Saturday" then -- Sabado 
 RashidPos = {x = 100, y = 100, z = 7} -- Edron 
 elseif Dia == "Sunday" then -- Domingo -- by PaulO 
 RashidPos = {x = 100, y = 100, z = 7} -- Carlin 
 end
 doCreateNpc("Rashid", RashidPos)
 end