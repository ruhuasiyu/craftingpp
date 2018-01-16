execute store result score @s cppTicks run time query daytime
execute at @s[scores={cppTicks=1}] run tellraw @a[distance=..300] {"translate":"cpp.info.time6"}
execute at @s[scores={cppTicks=6000}] run tellraw @a[distance=..300] {"translate":"cpp.info.time12"}
execute at @s[scores={cppTicks=12000}] run tellraw @a[distance=..300] {"translate":"cpp.info.time18"}
execute at @s[scores={cppTicks=18000}] run tellraw @a[distance=..300] {"translate":"cpp.info.time0"}

execute at @s[scores={cppTicks=1}] run playsound minecraft:entity.player.levelup block @a[distance=..300] ~ ~ ~ 20 1.5
execute at @s[scores={cppTicks=11990}] run playsound minecraft:entity.player.levelup block @a[distance=..300] ~ ~ ~ 20 1.5
