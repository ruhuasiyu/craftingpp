advancement revoke @s only cpp:block/carved_pumpkin
scoreboard players set #block_id cppValue 4
execute as @s[predicate=cpp:mainhand/carved_pumpkin] run data modify storage cpp:block Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/carved_pumpkin] run data modify storage cpp:block Item set from entity @s Inventory[{Slot:-106b}]
execute store result score #put_block_cmd cppValue run data get storage cpp:block Item.tag.CustomModelData
execute if score #put_block_cmd cppValue matches 12970000..12979999 run function cpp:block/put/carved_pumpkin
