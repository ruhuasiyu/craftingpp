advancement revoke @s only cpp:block/gold_block
scoreboard players set #block_id cppValue 6
execute as @s[predicate=cpp:mainhand/gold_block] if data entity @s SelectedItem.tag.id run function cpp:block/pos_main
execute as @s[predicate=!cpp:mainhand_gold_block] if data entity @s Inventory[{Slot:-106b}].tag.id run function cpp:block/pos_off
