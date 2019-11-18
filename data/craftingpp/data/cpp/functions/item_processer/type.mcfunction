execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:12b}].Count

# 工具处理
execute if predicate cpp:item_processer/tool run function cpp:item_processer/recipes/tool
# 合成4物品
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:piston"}]} if score #temp cppValue matches 4.. if predicate cpp:item_processer/piston4 run function cpp:item_processer/recipes/piston4
# 合成9物品
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:piston"}]} if score #temp cppValue matches 9.. if predicate cpp:item_processer/piston9 run function cpp:item_processer/recipes/piston9
# 红色火之力
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:red_force_of_fire"}}]} if predicate cpp:item_processer/red_force_of_fire run function cpp:item_processer/recipes/red_force_of_fire
# 水桶
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:water_bucket"}]} if predicate cpp:item_processer/water_bucket run function cpp:item_processer/recipes/water_bucket
# 杂项
execute if predicate cpp:item_processer/misc run function cpp:item_processer/recipes/misc
# 压缩
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:compressor"}},{Slot:12b,Count:64b}]} run function cpp:item_processer/recipes/compressor

function #cpp:item_processer
