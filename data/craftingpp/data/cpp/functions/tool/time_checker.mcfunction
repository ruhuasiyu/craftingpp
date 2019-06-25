execute store result score @s cppTick run time query daytime
execute at @s[scores={cppTick=1}] run tellraw @a[distance=..500] {"translate":"item.cpp.time_checker.time06"}
execute at @s[scores={cppTick=6001}] run tellraw @a[distance=..500] {"translate":"item.cpp.time_checker.time12"}
execute at @s[scores={cppTick=12001}] run tellraw @a[distance=..500] {"translate":"item.cpp.time_checker.time18"}
execute at @s[scores={cppTick=18001}] run tellraw @a[distance=..500] {"translate":"item.cpp.time_checker.time00"}

execute at @s[scores={cppTick=1}] run playsound entity.player.levelup block @a[distance=..500] ~ ~ ~ 20 1.5
execute at @s[scores={cppTick=11990}] run playsound entity.player.levelup block @a[distance=..500] ~ ~ ~ 20 1.5
