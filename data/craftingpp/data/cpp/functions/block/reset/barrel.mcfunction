advancement revoke @s only cpp:block/barrel
scoreboard players set #block_id cppValue 3
execute as @s[predicate=cpp:mainhand/barrel] if data entity @s SelectedItem.tag.id run function cpp:block/pos_main
execute as @s[predicate=!cpp:mainhand_barrel] if data entity @s Inventory[{Slot:-106b}].tag.id run function cpp:block/pos_off
