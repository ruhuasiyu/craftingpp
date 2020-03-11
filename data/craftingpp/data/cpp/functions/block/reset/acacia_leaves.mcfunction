advancement revoke @s only cpp:block/acacia_leaves
scoreboard players set #block_id cppValue 2
execute as @s[predicate=cpp:mainhand/acacia_leaves] if data entity @s SelectedItem.tag.id run function cpp:block/pos_main
execute as @s[predicate=!cpp:mainhand_acacia_leaves] if data entity @s Inventory[{Slot:-106b}].tag.id run function cpp:block/pos_off
