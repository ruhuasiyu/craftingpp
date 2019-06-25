loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
function cpp:chain/damage_check
execute if score #temp cppValue < #max_durality cppValue run function cpp:chain/shovel/mark
