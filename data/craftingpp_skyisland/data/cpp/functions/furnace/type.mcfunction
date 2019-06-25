# 炖菜
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:raw_rabbit_stew"}}] run function cpp:furnace/rabbit_stew
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:raw_colorful_vegetable"}}] run function cpp:furnace/colorful_vegetable
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:raw_braised_pork_with_potatoes"}}] run function cpp:furnace/braised_pork_with_potatoes
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:raw_braised_beef_with_potatoes"}}] run function cpp:furnace/braised_beef_with_potatoes

# 花草
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:acacia_sapling"}] run function cpp:furnace/acacia_sapling

# 葡萄干
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:grape"}}] run function cpp:furnace/raisin
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:golden_grape"}}] run function cpp:furnace/raisin
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:apple"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:raisin"}}] run function cpp:furnace/empty

# 煮鸡蛋等
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:egg"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:boiled_egg"}}] run function cpp:furnace/boiled_egg
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:carrot"}] unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/baked_carrot
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:parrot_meat"}}] unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/cooked_parrot_meat
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:horse_meat"}}] unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/cooked_horse_meat
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:donkey_meat"}}] unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/cooked_donkey_meat
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:mule_meat"}}] unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/cooked_mule_meat
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:llama_meat"}}] unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/cooked_llama_meat
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:bear_meat"}}] unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/cooked_bear_meat
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{id:"cpp:clay_bucket"}}] unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/clay_bucket

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_sword"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_axe"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_pickaxe"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_shovel"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_hoe"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_helmet"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_chestplate"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_leggings"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_boots"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_horse_armor"}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{id:"cpp:splint"}}] run function cpp:furnace/splint

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:firework_star"}] unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/empty
