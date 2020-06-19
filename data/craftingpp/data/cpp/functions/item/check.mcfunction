execute if score $skyislandMode cppConfig matches 1 as @s[nbt={Item:{tag:{cpp_skyisland_drop:1b}}}] run function cpp:item/skyisland
kill @s[predicate=cpp:item/cpp_clear]
execute as @s[predicate=cpp:item/cpp_generate_sheep] at @s run function cpp:item/sheep
execute as @s[predicate=cpp:item/1] if data entity @s Item.tag.cpp_compressed_level run function cpp:item/decompress
execute as @s[nbt={Item:{tag:{cpp_leaves_fast_decay_marker:1b}}}] at @s run function cpp:item/leaves_check
tag @s add cpp_item_checked
