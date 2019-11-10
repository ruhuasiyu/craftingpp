tag @s add cpp_leaves
execute if data storage cpp:putted_block Item.tag{id:"cpp:ore_leaves"} run tag @s add cpp_ore_leaves
execute if data storage cpp:putted_block Item.tag{id:"cpp:wool_leaves"} run tag @s add cpp_wool_leaves
execute if data storage cpp:putted_block Item.tag{id:"cpp:fruit_leaves"} run tag @s add cpp_fruit_leaves
scoreboard players add @s cppStoredxp 0
