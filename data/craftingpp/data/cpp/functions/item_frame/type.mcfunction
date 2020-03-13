# 仪式
execute as @s[tag=cpp_rituals_item] positioned ~ ~-1 ~ run function cpp:rituals/type
# 放置过展示框的展示框
execute as @s[tag=!cpp_special_item_frame,predicate=cpp:item/item_frame] run tag @s add cpp_item_frame_show
# 修改边框
execute as @s[tag=!cpp_item_frame_show] run function cpp:item_frame/frame
# 装饰物
execute as @s[tag=cpp_special_item_frame] run function cpp:item_frame/special
# 爆竹
execute as @s[tag=cpp_firecrackers] run function cpp:item_frame/firecrackers
# 磁铁
execute as @s[predicate=cpp:item/magnet] run function cpp:item_frame/magnet/tick
# 手
execute as @s[predicate=cpp:item/hand] run function cpp:golem/hand/type
