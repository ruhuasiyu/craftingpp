kill @e[type=ender_pearl,distance=..2,limit=1]
scoreboard players set @s cppPearl 0
tp @s ^ ^ ^200
execute at @s run spreadplayers ~ ~ 1 2 false @s
give @s minecraft:ender_pearl{display:{LocName:"cpp.item.transport_ball"},ench:[{id:999s}]}
