execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:prismarine"}]} run function cpp:all_in_one_machine/type/nh/flint_prismarine
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:prismarine_bricks"}]} run function cpp:all_in_one_machine/type/nh/flint_prismarine_bricks
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:dark_prismarine"}]} run function cpp:all_in_one_machine/type/nh/flint_prismarine_bricks
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:clay"}]} run function cpp:all_in_one_machine/type/nh/flint_clay
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:white_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_white_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_orange_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:magenta_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_magenta_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:light_blue_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_light_blue_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:yellow_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_yellow_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:lime_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_lime_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:pink_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_pink_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:gray_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_gray_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:light_gray_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_light_gray_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:cyan_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_cyan_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:purple_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_purple_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:blue_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_blue_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:brown_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_brown_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:green_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_green_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:red_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_red_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:black_wool"}]} run function cpp:all_in_one_machine/type/nh/flint_black_wool
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:iron_ingot"}]} run function cpp:all_in_one_machine/type/nh/flint_iron_ingot
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:gold_ingot"}]} run function cpp:all_in_one_machine/type/nh/flint_gold_ingot
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:coal"}]} run function cpp:all_in_one_machine/type/nh/flint_coal
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:charcoal"}]} run function cpp:all_in_one_machine/type/nh/flint_coal
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:diamond"}]} run function cpp:all_in_one_machine/type/nh/flint_diamond
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:emerald"}]} run function cpp:all_in_one_machine/type/nh/flint_emerald
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:quartz"}]} run function cpp:all_in_one_machine/type/nh/flint_quartz
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:granite"}]} run function cpp:all_in_one_machine/type/nh/flint_quartz
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:diorite"}]} run function cpp:all_in_one_machine/type/nh/flint_quartz
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:andesite"}]} run function cpp:all_in_one_machine/type/nh/flint_quartz

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,id:"minecraft:flint"}]} store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b,id:"minecraft:flint"}]} store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count

execute as @s[tag=!cpp_machine_work,scores={cppStoredxp=4..}] run function cpp:all_in_one_machine/type/nh/flint4
execute as @s[tag=!cpp_machine_work] if score #temp cppValue matches 8.. run function cpp:all_in_one_machine/type/nh/flint8
