# 切换帽子模型
execute as @s[predicate=cpp:mainhand/hat] run function cpp:decor/mainhand_hat
execute as @s[predicate=cpp:offhand/hat] run function cpp:decor/offhand_hat
execute as @s[predicate=cpp:head_hat] run function cpp:decor/head_hat
# 扫帚
execute as @s[predicate=cpp:hand_broom] run function cpp:decor/hand_broom
# 流星丸
execute as @s[predicate=cpp:hand_shooting_star] run effect give @s levitation 2 255 true
# 称号
execute as @s[predicate=cpp:mainhand/emerald] run function cpp:decor/mainhand_emerald
# 随机方块# check 
execute as @s[predicate=cpp:offhand/shulker_box] if data entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[0] run function cpp:item/random_block/run
# 替换合成器
execute as @s[predicate=cpp:mainhand/petrified_oak_slab] unless data entity @s SelectedItem.tag.CustomModelData run function cpp:crafting_machine/replace/main
execute as @s[predicate=cpp:offhand/petrified_oak_slab] unless data entity @s Inventory[{Slot:-106b}].tag.CustomModelData run function cpp:crafting_machine/replace/off
# 烈焰红唇
execute as @s[predicate=cpp:head_red_lip] run function cpp:decor/head_red_lip
data modify storage cpp:playerbag Items set from entity @s Inventory
data remove storage cpp:playerbag Items[{Slot:103b}]
execute if data storage cpp:playerbag Items[{id:"minecraft:firework_star",tag:{id:"cpp:red_lip"}}] run function cpp:decor/bag_red_lip
# 帽子
advancement grant @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:green_hat"}}]}] only cpp:forgive
advancement grant @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:cat_breed"}}]}] only cpp:meow
# 紫色美瞳
effect give @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:glow_hat"}}]}] glowing 5
execute as @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:glass_helmet"}}]}] at @s anchored eyes unless block ~ ~ ~ water run effect give @s water_breathing 5
execute as @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:purple_eye"}}]}] at @s run effect give @e[tag=cpp_wild_grass,distance=..100] glowing 5
# 附魔之瓶
execute as @s[predicate=cpp:offhand/hopper] run function cpp:xp/check
