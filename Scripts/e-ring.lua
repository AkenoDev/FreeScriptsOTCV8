local HPEPercent = 50
local MPEPercent = 10
local HPDPercent = 90
local Ering = 3051
local Dring = 3249

macro(30, "Swap E-Ring", function()
  if (manapercent() <= MPEPercent and findItem(Dring)) then
    moveToSlot(Dring, SlotFinger)
  elseif (hppercent() <= HPEPercent and findItem(Ering)) then
    moveToSlot(Ering, SlotFinger)
  elseif (hppercent() >= HPDPercent and findItem(Dring)) then
    moveToSlot(Dring, SlotFinger)
  end
end)
