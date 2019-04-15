tp @s ~ ~ ~ facing entity @e[tag=cpp_roost,sort=nearest,limit=1]
data merge entity @s {Motion:[0.0d,-1.0d,0.0d]}

execute store result score #roostPos cppValue run data get entity @e[tag=cpp_roost,sort=nearest,limit=1] Pos[0] 100
execute store result score #villagerPos cppValue run data get entity @s Pos[0] 100
execute store result entity @s Motion[0] double 0.0005 run scoreboard players operation #roostPos cppValue -= #villagerPos cppValue

execute store result score #roostPos cppValue run data get entity @e[tag=cpp_roost,sort=nearest,limit=1] Pos[2] 100
execute store result score #villagerPos cppValue run data get entity @s Pos[2] 100
execute store result entity @s Motion[2] double 0.0005 run scoreboard players operation #roostPos cppValue -= #villagerPos cppValue

data merge entity @s {EggLayTime:101}
execute if entity @e[distance=..0.5,tag=cpp_roost] run data merge entity @s {EggLayTime:1}
