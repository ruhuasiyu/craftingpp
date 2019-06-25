# 报时器
execute as @s[nbt={Item:{tag:{id:"cpp:time_checker"}}}] run function cpp:tool/time_checker
# 破坏之手
execute as @s[nbt={Item:{tag:{id:"cpp:break_hand"}}}] run setblock ~ ~1 ~ air destroy
# 画/对联/旗帜
execute as @s[tag=cpp_special_item_frame] run function cpp:decor/special_item_frame
# 物品展示框
execute as @s[tag=!cpp_has_item] if data entity @s Item at @s run function cpp:decor/item_frame_glass1
execute as @s[tag=!cpp_has_no_item] unless data entity @s Item at @s run function cpp:decor/item_frame_glass2
# 鞭炮
execute as @s[tag=cpp_firecrackers] run function cpp:tool/firecrackers
# 仪式
execute as @s[tag=cpp_rituals_item] run function cpp:rituals/rituals/type
