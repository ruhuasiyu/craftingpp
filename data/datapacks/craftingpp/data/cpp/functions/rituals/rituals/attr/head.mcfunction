tellraw @p {"translate":"info.cpp.rituals.finish"}

data merge entity @s {Item:{tag:{AttributeModifiers:[{Operation:0,Amount:0,AttributeName:"generic.maxHealth",Name:"head_maxHealth",UUIDLeast:1036,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.luck",Name:"head_luck",UUIDLeast:1037,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.knockbackResistance",Name:"head_knockbackResistance",UUIDLeast:1038,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.movementSpeed",Name:"head_movementSpeed",UUIDLeast:1039,UUIDMost:520,Slot:"head"},{Operation:0,Amount:2,AttributeName:"generic.armor",Name:"head_armor",UUIDLeast:1034,UUIDMost:520,Slot:"head"}]}}}

data merge entity @s[nbt={Item:{id:"minecraft:leather_helmet"}}] {Item:{tag:{AttributeModifiers:[{Operation:0,Amount:0,AttributeName:"generic.maxHealth",Name:"head_maxHealth",UUIDLeast:1036,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.luck",Name:"head_luck",UUIDLeast:1037,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.knockbackResistance",Name:"head_knockbackResistance",UUIDLeast:1038,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.movementSpeed",Name:"head_movementSpeed",UUIDLeast:1039,UUIDMost:520,Slot:"head"},{Operation:0,Amount:1,AttributeName:"generic.armor",Name:"head_armor",UUIDLeast:1034,UUIDMost:520,Slot:"head"}]}}}

data merge entity @s[nbt={Item:{id:"minecraft:diamond_helmet"}}] {Item:{tag:{AttributeModifiers:[{Operation:0,Amount:0,AttributeName:"generic.maxHealth",Name:"head_maxHealth",UUIDLeast:1036,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.luck",Name:"head_luck",UUIDLeast:1037,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.knockbackResistance",Name:"head_knockbackResistance",UUIDLeast:1038,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.movementSpeed",Name:"head_movementSpeed",UUIDLeast:1039,UUIDMost:520,Slot:"head"},{Operation:0,Amount:3,AttributeName:"generic.armor",Name:"head_armor",UUIDLeast:1034,UUIDMost:520,Slot:"head"},{Operation:0,Amount:2,AttributeName:"generic.armorToughness",Name:"head_armorToughness",UUIDLeast:1035,UUIDMost:520,Slot:"head"}]}}}

execute if score #temp4 cppRandom matches 1.. store result entity @s Item.tag.AttributeModifiers[3].Amount double 0.005 run scoreboard players get #temp4 cppRandom
execute if score #temp3 cppRandom matches 1.. store result entity @s Item.tag.AttributeModifiers[2].Amount double 0.1 run scoreboard players get #temp3 cppRandom
execute if score #temp2 cppRandom matches 1.. store result entity @s Item.tag.AttributeModifiers[1].Amount double 0.5 run scoreboard players get #temp2 cppRandom
execute if score #temp1 cppRandom matches 1.. store result entity @s Item.tag.AttributeModifiers[0].Amount double 1 run scoreboard players get #temp1 cppRandom

execute if score #temp4 cppRandom matches ..0 run data remove entity @s Item.tag.AttributeModifiers[3]
execute if score #temp3 cppRandom matches ..0 run data remove entity @s Item.tag.AttributeModifiers[2]
execute if score #temp2 cppRandom matches ..0 run data remove entity @s Item.tag.AttributeModifiers[1]
execute if score #temp1 cppRandom matches ..0 run data remove entity @s Item.tag.AttributeModifiers[0]

scoreboard players reset @s cppTick
scoreboard players reset @s cppRitualType
data remove block ~ ~-1 ~ Items
tag @s remove cpp_rituals_item