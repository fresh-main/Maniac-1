function maniac:objects/elevator/door2/close
data modify storage efm switch.elevatorWorking set value 4
schedule function maniac:objects/elevator/door3/open 80t