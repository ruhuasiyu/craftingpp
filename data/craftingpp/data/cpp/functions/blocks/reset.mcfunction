advancement revoke @s only cpp:blocks/put_mod_block
execute as @s[predicate=cpp:block_on_mainhand] if data entity @s SelectedItem.tag.id run function cpp:blocks/pos_main
execute as @s[predicate=!cpp:block_on_mainhand] if data entity @s Inventory[{Slot:-106b}].tag.id run function cpp:blocks/pos_off
