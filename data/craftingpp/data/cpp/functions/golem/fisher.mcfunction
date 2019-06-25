execute unless entity @s[scores={cppTick=1..}] run function cpp:golem/fisher_init
scoreboard players remove @s cppTick 1
execute as @s[scores={cppTick=0}] run loot spawn ~ ~ ~ fish gameplay/fishing ~ ~ ~ mainhand
execute as @s[scores={cppTick=0}] run scoreboard players add @s cppStoredxp 3
execute as @s[scores={cppTick=0}] if score @s cppStoredxp matches 9.. run summon item ~ ~ ~ {Item:{id:"minecraft:experience_bottle",Count:1b}}
execute as @s[scores={cppTick=0}] if score @s cppStoredxp matches 9.. run scoreboard players remove @s cppStoredxp 9
