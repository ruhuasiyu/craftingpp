advancement revoke @s only cpp:block/acacia_sapling
scoreboard players set #block_id cppValue 1
execute as @s[predicate=cpp:mainhand/acacia_sapling] if data entity @s SelectedItem.tag.id run function cpp:block/pos_main
execute as @s[predicate=!cpp:mainhand_acacia_sapling] if data entity @s Inventory[{Slot:-106b}].tag.id run function cpp:block/pos_off
