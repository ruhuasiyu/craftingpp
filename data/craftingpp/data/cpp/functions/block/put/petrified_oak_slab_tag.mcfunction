execute if data storage cpp:block Item.tag{cpp_tag:['machine']} run tag @s add cpp_machine
execute if data storage cpp:block Item.tag{cpp_tag:['leaves']} run tag @s add cpp_leaves
execute if data storage cpp:block Item.tag{cpp_tag:['trees']} run tag @s add cpp_trees
execute if data storage cpp:block Item.tag{cpp_tag:['crops']} run tag @s add cpp_crops
execute if data storage cpp:block Item.tag{cpp_tag:['plants']} run tag @s add cpp_plants
execute if data storage cpp:block Item.tag{cpp_tag:['need_fire']} run tag @s add cpp_need_fire
data modify entity @s[tag=cpp_need_fire] Fire set value 32767s

execute if data storage cpp:block Item.tag{cpp_tag:['barrel']} run tag @s add cpp_barrel
execute if data storage cpp:block Item.tag{cpp_tag:['chest']} run tag @s add cpp_chest
execute if data storage cpp:block Item.tag{cpp_tag:['gold_block']} run tag @s add cpp_gold_block

execute unless data storage cpp:block Item.tag.id run tag @s add cpp_crafting_machine
execute if data storage cpp:block Item.tag{id:"cpp:all_in_one_machine"} run tag @s add cpp_all_in_one_machine
execute if data storage cpp:block Item.tag{id:"cpp:trade_machine"} run tag @s add cpp_trade_machine
execute if data storage cpp:block Item.tag{id:"cpp:mob_projector"} run tag @s add cpp_mob_projector
execute if data storage cpp:block Item.tag{id:"cpp:golden_anvil"} run tag @s add cpp_golden_anvil
execute if data storage cpp:block Item.tag{id:"cpp:beacon_enhancer"} run tag @s add cpp_beacon_enhancer
execute if data storage cpp:block Item.tag{id:"cpp:empty_bookshelf"} run tag @s add cpp_empty_bookshelf
execute if data storage cpp:block Item.tag{id:"cpp:item_processer"} run tag @s add cpp_item_processer
execute if data storage cpp:block Item.tag{id:"cpp:dustbin"} run tag @s add cpp_dustbin
execute if data storage cpp:block Item.tag{id:"cpp:chest_dropper"} run tag @s add cpp_chest_dropper
execute if data storage cpp:block Item.tag{id:"cpp:moon_stone"} run tag @s add cpp_moon_stone
execute if data storage cpp:block Item.tag{id:"cpp:sun_stone"} run tag @s add cpp_sun_stone
execute if data storage cpp:block Item.tag{id:"cpp:ore_leaves"} run tag @s add cpp_ore_leaves
execute if data storage cpp:block Item.tag{id:"cpp:wool_leaves"} run tag @s add cpp_wool_leaves
execute if data storage cpp:block Item.tag{id:"cpp:fruit_leaves"} run tag @s add cpp_fruit_leaves
execute if data storage cpp:block Item.tag{id:"cpp:ore_leaves"} run tag @s add cpp_ore_leaves
execute if data storage cpp:block Item.tag{id:"cpp:wool_leaves"} run tag @s add cpp_wool_leaves
execute if data storage cpp:block Item.tag{id:"cpp:fruit_leaves"} run tag @s add cpp_fruit_leaves
execute if data storage cpp:block Item.tag{id:"cpp:rice"} run tag @s add cpp_rice

execute if data storage cpp:block Item.tag{id:"cpp:all_in_one_machine"} store result score @s cppStoredxp run data get storage cpp:block Item.tag.cppStoredxp
execute if data storage cpp:block Item.tag{id:"cpp:trade_machine"} store result score @s cppTradeValue run data get storage cpp:block Item.tag.cppTradeValue
execute if data storage cpp:block Item.tag{id:"cpp:mob_projector"} store result score @s cppStoredxp run data get storage cpp:block Item.tag.cppStoredxp
scoreboard players set @s cppTick 0

execute as @s[tag=cpp_plants] unless block ~ ~-1 ~ #cpp:sapling_plantable_on run function cpp:block/destroy

execute store result score #put_block_cmd cppValue run data get storage cpp:block Item.tag.CustomModelData
execute if data storage cpp:block Item.tag{cpp_tag:['+4000']} store result storage cpp:block Item.tag.CustomModelData int 1 run scoreboard players add #put_block_cmd cppValue 4000

data modify entity @s ArmorItems[3] set from storage cpp:block Item
