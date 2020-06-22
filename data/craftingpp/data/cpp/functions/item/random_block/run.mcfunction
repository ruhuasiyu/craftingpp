# 获取随机位置
data modify storage cpp:random_block Item set from entity @s Inventory[{Slot:-106b}].tag
execute store result score #random_max cppValue run data get storage cpp:random_block Item.BlockEntityTag.Items
summon area_effect_cloud ~ 0 ~ {Tags:["cpp_random"]}
execute store result score #rand cppValue run data get entity @e[tag=cpp_random,limit=1,type=area_effect_cloud] UUID[0]
kill @e[tag=cpp_random,type=area_effect_cloud]
scoreboard players operation #rand cppValue %= #random_max cppValue
execute if score #rand cppValue matches 1.. run function cpp:item/random_block/loop
# 主手
setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items append from storage cpp:random_block Item.BlockEntityTag.Items[0]
data modify block ~ 255 ~ Items[0].Count set value 1b
data modify block ~ 255 ~ Items[0].Slot set value 0b
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
# 副手
execute store result storage cpp:random_block Item.BlockEntityTag.Items[0].Count byte 0.99999 run data get storage cpp:random_block Item.BlockEntityTag.Items[0].Count
data remove storage cpp:random_block Item.BlockEntityTag.Items[{Count:0b}]
data modify block ~ 255 ~ Items set value [{Slot:0b,id:"minecraft:shulker_box",Count:1b}]
data modify block ~ 255 ~ Items[0].tag set from storage cpp:random_block Item
loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
