execute at @s[scores={cppCraft=29001}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:iron_block",Count:1b}}
execute at @s[scores={cppCraft=29002}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:gold_block",Count:1b}}
execute at @s[scores={cppCraft=29003}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:gcoal_block",Count:1b}}
execute at @s[scores={cppCraft=29004}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:quartz_block",Count:1b}}
execute at @s[scores={cppCraft=29005}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:diamond_block",Count:1b}}
execute at @s[scores={cppCraft=29006}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:emerald_block",Count:1b}}
execute at @s[scores={cppCraft=29007}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:lapis_block",Count:1b}}
execute at @s[scores={cppCraft=29008}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{LocName:"cpp.item.enchanted_iron"},ench:[{id:999s}]}}}
execute at @s[scores={cppCraft=29009}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"},ench:[{id:999s}]}}}
execute at @s[scores={cppCraft=29010}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:ghast_tear",Count:1b}}
execute at @s[scores={cppCraft=29012}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:iron_nugget",Count:1b,tag:{display:{LocName:"cpp.item.nether_star_shard"},ench:[{id:999s}]}}}

execute as @s store result score @s cppCount1 run data get entity @s Items[1].Count
execute as @s store result score @s cppCount2 run data get entity @s Items[2].Count
execute as @s store result score @s cppCount3 run data get entity @s Items[3].Count
execute as @s store result score @s cppCount4 run data get entity @s Items[4].Count

execute as @s run scoreboard players operation @s cppCount1 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount2 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount3 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount4 -= #1 cppCount1

execute as @s store result entity @s Items[4].Count byte 1 run scoreboard players get @s cppCount4
execute as @s store result entity @s Items[3].Count byte 1 run scoreboard players get @s cppCount3
execute as @s store result entity @s Items[2].Count byte 1 run scoreboard players get @s cppCount2
execute as @s store result entity @s Items[1].Count byte 1 run scoreboard players get @s cppCount1

scoreboard players set @s cppTicks 0