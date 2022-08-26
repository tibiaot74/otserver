
RollerCoaster = {}

function RollerCoaster:onChangeLevel(cid, fromZ, toZ)
  return TRUE
end

function RollerCoaster:onMove(cid, rail, railInfo, pos)
  return TRUE
end

function RollerCoaster:onChangeSpeed(cid, power)
  if (power == 2) then
    doSendAnimatedText(getCreaturePosition(cid),"TROC TROC",210)
  else
    doSendAnimatedText(getCreaturePosition(cid),"TSSSIIIIII",210)
  end
  return TRUE
end

function RollerCoaster:onTypeChange(cid, fromType, toType)
  return TRUE
end

function RollerCoaster:onExitQuery(cid)
  return TRUE
end

function RollerCoaster:onExit(cid)
  return TRUE
end

function RollerCoaster:onEnterQuery(cid, cart)
  return TRUE
end

function RollerCoaster:onEnter(cid, cartID)
  return TRUE
end  