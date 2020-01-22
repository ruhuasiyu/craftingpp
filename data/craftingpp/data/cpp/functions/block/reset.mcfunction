advancement revoke @s only cpp:block/put_mod_block
execute as @s[predicate=cpp:block_on_mainhand] if data entity @s SelectedItem.tag.id run function cpp:block/pos_main
execute as @s[predicate=!cpp:block_on_mainhand] if data entity @s Inventory[{Slot:-106b}].tag.id run function cpp:block/pos_off
