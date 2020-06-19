execute store result entity @s[tag=!cpp_item_frame_flag] Item.tag.CustomModelData int 1.00000008 run data get entity @s Item.tag.CustomModelData
data modify entity @s[tag=!cpp_item_frame_flag] ItemRotation set value 0b

# 画
data modify entity @s[nbt={Item:{tag:{CustomModelData:12974051}}}] Item.tag.CustomModelData set value 12974001
# 春联
data modify entity @s[nbt={Item:{tag:{CustomModelData:12974125}}}] Item.tag.CustomModelData set value 12974201
# 横批
data modify entity @s[nbt={Item:{tag:{CustomModelData:12974213}}}] Item.tag.CustomModelData set value 12974301
# 其它
data modify entity @s[nbt={Item:{tag:{CustomModelData:12974305}}}] Item.tag.CustomModelData set value 12974101
