# 切换帽子模型
execute as @s[predicate=cpp:mainhand_hat] run function cpp:decor/mainhand_hat
execute as @s[predicate=cpp:offhand_hat] run function cpp:decor/offhand_hat
execute as @s[predicate=cpp:head_hat] run function cpp:decor/head_hat
# 扫帚
execute as @s[predicate=cpp:hand_broom] run function cpp:decor/hand_broom
# 流星丸
execute as @s[predicate=cpp:hand_shooting_star] run effect give @s levitation 2 255 true
# 称号
execute as @s[predicate=cpp:mainhand_emerald] run function cpp:decor/mainhand_emerald
# 随机方块# check 
execute as @s[predicate=cpp:offhand_shulker_box] if data entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[0] run function cpp:item/random_block/run
# 替换合成器
execute as @s[predicate=cpp:mainhand_petrified_oak_slab] unless data entity @s SelectedItem.tag.CustomModelData run function cpp:crafting_machine/replace/main
execute as @s[predicate=cpp:offhand_petrified_oak_slab] unless data entity @s Inventory[{Slot:-106b}].tag.CustomModelData run function cpp:crafting_machine/replace/off
# 烈焰红唇
execute as @s[predicate=cpp:head_red_lip] run function cpp:decor/head_red_lip
data modify storage cpp:playerbag Items set from entity @s Inventory
data remove storage cpp:playerbag Items[{Slot:103b}]
execute if data storage cpp:playerbag Items[{id:"minecraft:firework_star",tag:{id:"cpp:red_lip"}}] run function cpp:decor/bag_red_lip
# 附魔之瓶
execute as @s[predicate=cpp:offhand_hopper] run function cpp:xp/check
