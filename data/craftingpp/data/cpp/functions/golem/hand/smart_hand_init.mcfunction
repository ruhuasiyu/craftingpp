scoreboard players set #random_min cppValue 100
scoreboard players add #random_max cppValue 900
function cpp:random
scoreboard players operation @s cppTick = #rand cppValue
