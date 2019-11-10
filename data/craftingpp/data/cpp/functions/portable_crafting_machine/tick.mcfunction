execute unless entity @a[distance=..6] run setblock ~ ~ ~ air
execute unless block ~ ~ ~ barrel run function cpp:portable_crafting_machine/break
function cpp_craft:craft/tick
