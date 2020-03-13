advancement revoke @s only cpp:block/oak_wall_sign
scoreboard players set #block_id cppValue 16
execute as @s[predicate=cpp:mainhand/oak_sign] if data entity @s SelectedItem.tag.id run function cpp:block/pos_main
execute as @s[predicate=!cpp:mainhand/oak_sign] if data entity @s Inventory[{Slot:-106b}].tag.id run function cpp:block/pos_off
