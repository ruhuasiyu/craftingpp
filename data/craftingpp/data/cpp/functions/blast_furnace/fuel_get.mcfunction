tag @s remove cpp_check_fuel
execute store result score @s cppValue run data get block ~ ~ ~ BurnTime
replaceitem block ~ ~ ~ container.0 air
data modify block ~ ~ ~ {} merge from entity @s HandItems[0].tag.storage
