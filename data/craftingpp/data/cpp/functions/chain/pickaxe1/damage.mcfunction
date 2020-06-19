execute as @s[predicate=!cpp:mainhand/silk_touch] run function cpp:chain/xp
function cpp:chain/mine
execute unless predicate cpp:no_damage run scoreboard players add #damage cppValue 1
execute if score #damage cppValue < #max_durality cppValue run function cpp:chain/pickaxe1/mark
