execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:12b}].Count

# 工具处理
execute if predicate cpp:item_processer/tool run function cpp:item_processer/recipes/tool
# 合成4物品
execute if predicate cpp:item_processer/up/piston if score #temp cppValue matches 4.. if predicate cpp:item_processer/piston4 run function cpp:item_processer/recipes/piston4
# 合成9物品
execute if predicate cpp:item_processer/up/piston if score #temp cppValue matches 9.. if predicate cpp:item_processer/piston9 run function cpp:item_processer/recipes/piston9
# 合成器
execute if predicate cpp:item_processer/up/crafting_machine if predicate cpp:item_processer/crafting_machine run function cpp:item_processer/recipes/crafting_machine
# 红色火之力
execute if predicate cpp:item_processer/up/red_force_of_fire if predicate cpp:item_processer/red_force_of_fire run function cpp:item_processer/recipes/red_force_of_fire
# 水桶
execute if predicate cpp:item_processer/up/water_bucket if predicate cpp:item_processer/water_bucket run function cpp:item_processer/recipes/water_bucket
# 杂项
execute if predicate cpp:item_processer/misc run function cpp:item_processer/recipes/misc
# 压缩
execute if predicate cpp:item_processer/up/compressor run function cpp:item_processer/recipes/compressor

function #cpp:item_processer
