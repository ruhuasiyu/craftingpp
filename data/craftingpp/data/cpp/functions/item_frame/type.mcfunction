execute as @s[tag=cpp_rituals_item] positioned ~ ~-1 ~ run function cpp:rituals/rituals/type
execute as @s[tag=!cpp_special_item_frame,predicate=cpp:has_item_frame] run tag @s add cpp_item_frame_show
execute as @s[tag=!cpp_item_frame_show] at @s run function cpp:item_frame/frame
execute as @s[tag=cpp_special_item_frame] run function cpp:item_frame/special
execute as @s[tag=cpp_firecrackers] run function cpp:tool/firecrackers
