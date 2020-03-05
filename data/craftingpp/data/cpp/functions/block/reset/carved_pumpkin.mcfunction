advancement revoke @s only cpp:block/carved_pumpkin
scoreboard players set #block_id cppValue 4
execute as @s[predicate=cpp:mainhand_carved_pumpkin] if data entity @s SelectedItem.tag.id run function cpp:block/pos_main
execute as @s[predicate=!cpp:mainhand_carved_pumpkin] if data entity @s Inventory[{Slot:-106b}].tag.id run function cpp:block/pos_off
