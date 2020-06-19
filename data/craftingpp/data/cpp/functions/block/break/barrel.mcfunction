execute as @s[tag=cpp_all_in_one_machine] run function cpp:block/break/all_in_one_machine
execute store result entity @s[tag=cpp_all_in_one_machine] ArmorItems[3].tag.cppStoredxp int 1 run scoreboard players get @s cppStoredxp
execute store result entity @s[tag=cpp_mob_projector] ArmorItems[3].tag.cppStoredxp int 1 run scoreboard players get @s cppStoredxp
execute store result entity @s[tag=cpp_trade_machine] ArmorItems[3].tag.cppTradeValue int 1 run scoreboard players get @s cppTradeValue

tag @e[type=item,sort=nearest,predicate=cpp:item/dropped_barrel,limit=1,distance=..2] add cpp_block_drop
data modify entity @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..2] Item set from entity @s ArmorItems[3]
execute as @s[tag=cpp_portable_crafting_machine] run kill @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..2]
execute store result score #t cppValue run data get entity @e[type=item,distance=..2,tag=cpp_block_drop,limit=1] Item.tag.CustomModelData
execute if score #t cppValue matches 12970011..12970017 run data modify entity @e[type=item,distance=..2,tag=cpp_block_drop,limit=1] Item.tag.CustomModelData set value 12970010
tag @e[type=item,distance=..2,tag=cpp_block_drop] remove cpp_block_drop
kill @s
