tellraw @p {"translate":"info.cpp.rituals.finish"}
data merge entity @s {Item:{tag:{AttributeModifiers:[{Operation:0,Amount:0,AttributeName:"generic.maxHealth",Name:"feet_maxHealth",UUIDLeast:1006,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:0,AttributeName:"generic.luck",Name:"feet_luck",UUIDLeast:1007,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:0,AttributeName:"generic.knockbackResistance",Name:"feet_knockbackResistance",UUIDLeast:1008,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:0,AttributeName:"generic.movementSpeed",Name:"feet_movementSpeed",UUIDLeast:1009,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:1,AttributeName:"generic.armor",Name:"feet_armor",UUIDLeast:1004,UUIDMost:520,Slot:"feet"}]}}}
data merge entity @s[nbt={Item:{id:"minecraft:chainmail_boots"}}] {Item:{tag:{AttributeModifiers:[{Operation:0,Amount:0,AttributeName:"generic.maxHealth",Name:"feet_maxHealth",UUIDLeast:1006,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:0,AttributeName:"generic.luck",Name:"feet_luck",UUIDLeast:1007,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:0,AttributeName:"generic.knockbackResistance",Name:"feet_knockbackResistance",UUIDLeast:1008,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:0,AttributeName:"generic.movementSpeed",Name:"feet_movementSpeed",UUIDLeast:1009,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:2,AttributeName:"generic.armor",Name:"feet_armor",UUIDLeast:1004,UUIDMost:520,Slot:"feet"}]}}}
data merge entity @s[nbt={Item:{id:"minecraft:diamond_boots"}}] {Item:{tag:{AttributeModifiers:[{Operation:0,Amount:0,AttributeName:"generic.maxHealth",Name:"feet_maxHealth",UUIDLeast:1006,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:0,AttributeName:"generic.luck",Name:"feet_luck",UUIDLeast:1007,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:0,AttributeName:"generic.knockbackResistance",Name:"feet_knockbackResistance",UUIDLeast:1008,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:0,AttributeName:"generic.movementSpeed",Name:"feet_movementSpeed",UUIDLeast:1009,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:3,AttributeName:"generic.armor",Name:"feet_armor",UUIDLeast:1004,UUIDMost:520,Slot:"feet"},{Operation:0,Amount:3,AttributeName:"generic.armorToughness",Name:"feet_armorToughness",UUIDLeast:1005,UUIDMost:520,Slot:"feet"}]}}}

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