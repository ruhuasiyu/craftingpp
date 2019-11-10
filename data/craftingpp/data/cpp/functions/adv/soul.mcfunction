advancement revoke @s only cpp:block/soul
execute if score #skyislandMode cppValue matches 1 as @s[nbt={Inventory:[{id:"minecraft:sand"}]}] run give @s minecraft:soul_sand
execute if score #skyislandMode cppValue matches 1 as @s[nbt={Inventory:[{id:"minecraft:sand"}]}] run clear @s minecraft:sand 1
