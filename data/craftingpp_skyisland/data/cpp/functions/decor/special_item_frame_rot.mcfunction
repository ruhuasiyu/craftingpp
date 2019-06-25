execute as @s[tag=!cpp_item_frame_flag] store result entity @s Item.tag.CustomModelData int 1.00000008 run data get entity @s Item.tag.CustomModelData
data merge entity @s[tag=!cpp_item_frame_flag] {ItemRotation:0b}

# 画
execute as @s[nbt={Item:{tag:{CustomModelData:12974034}}}] run data merge entity @s {Item:{tag:{CustomModelData:12974001}}}
# 春联
execute as @s[nbt={Item:{tag:{CustomModelData:12974117}}}] run data merge entity @s {Item:{tag:{CustomModelData:12974201}}}
# 横批
execute as @s[nbt={Item:{tag:{CustomModelData:12974209}}}] run data merge entity @s {Item:{tag:{CustomModelData:12974301}}}
# 其它
execute as @s[nbt={Item:{tag:{CustomModelData:12974305}}}] run data merge entity @s {Item:{tag:{CustomModelData:12974101}}}
