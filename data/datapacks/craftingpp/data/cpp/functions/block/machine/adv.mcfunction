advancement revoke @s only cpp:block/machine

execute store result score @s cppValue run data get entity @s SelectedItem.tag.CustomModelData
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:petrified_oak_slab"}}] store result score @s cppValue run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData

execute at @s anchored eyes run function cpp:block/machine/get_pos
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=0}] run function cpp:block/machine/crafting_machine
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970001}] run function cpp:block/machine/all_in_one_machine
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970002}] run function cpp:block/machine/trade_machine
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970003}] run function cpp:block/machine/mob_projector
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970004}] run function cpp:block/machine/golden_anvil
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970005}] run function cpp:block/machine/beacon_enhancer
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970010}] run function cpp:block/machine/empty_bookshelf
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970018}] run function cpp:block/machine/item_processer
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970019}] run function cpp:block/machine/dustbin
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970091}] run function cpp:block/machine/moon_stone
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970092}] run function cpp:block/machine/sun_stone
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970099}] run function cpp:block/machine/portable_crafting_machine
execute at @e[tag=cpp_machine_pos] as @s[scores={cppValue=12970101}] run function cpp:block/machine/sorcerer_stone
