function onThink(interval, lastExecution)
MENSAGEM = {
"Ours gms do not answer private message.",
"Our ant-bot system with automatic detection works in two steps in login and scans",
"To make your donation just log www.oldserv.com , Good Game.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],19)
return TRUE
end