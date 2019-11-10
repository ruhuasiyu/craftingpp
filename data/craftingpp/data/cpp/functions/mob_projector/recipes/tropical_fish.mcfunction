tag @s add cpp_machine_work
scoreboard players add @s cppTick 12
data modify block ~ ~ ~ Items[{Slot:9b}].tag.CustomModelData set value 12973217
execute if score @s cppTick >= #mobProjectorPeriod cppValue run function cpp:mob_projector/recipes/tropical_fish_done
