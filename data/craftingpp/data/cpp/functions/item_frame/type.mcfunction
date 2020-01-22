execute as @s[tag=!cpp_has_item] if data entity @s Item run function cpp:item_frame/glass1
execute as @s[tag=!cpp_has_no_item] unless data entity @s Item run function cpp:item_frame/glass2
execute as @s[tag=cpp_special_item_frame] run function cpp:item_frame/special
execute as @s[tag=cpp_firecrackers] run function cpp:tool/firecrackers
execute as @s[tag=cpp_rituals_item] positioned ~ ~-1 ~ run function cpp:rituals/rituals/type
