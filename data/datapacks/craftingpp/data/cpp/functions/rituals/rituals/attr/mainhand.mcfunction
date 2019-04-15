tellraw @p {"translate":"info.cpp.rituals.finish"}
execute as @s[nbt={Item:{id:"minecraft:iron_sword"}}] run scoreboard players set #damage cppValue 5
execute as @s[nbt={Item:{id:"minecraft:stone_sword"}}] run scoreboard players set #damage cppValue 4
execute as @s[nbt={Item:{id:"minecraft:golden_sword"}}] run scoreboard players set #damage cppValue 3
execute as @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run scoreboard players set #damage cppValue 6
execute as @s[nbt={Item:{id:"minecraft:iron_axe"}}] run scoreboard players set #damage cppValue 8
execute as @s[nbt={Item:{id:"minecraft:stone_axe"}}] run scoreboard players set #damage cppValue 8
execute as @s[nbt={Item:{id:"minecraft:golden_axe"}}] run scoreboard players set #damage cppValue 6
execute as @s[nbt={Item:{id:"minecraft:diamond_axe"}}] run scoreboard players set #damage cppValue 8
execute as @s[nbt={Item:{id:"minecraft:trident"}}] run scoreboard players set #damage cppValue 8

execute as @s[nbt={Item:{id:"minecraft:iron_sword"}}] run scoreboard players set #speed cppValue -24
execute as @s[nbt={Item:{id:"minecraft:stone_sword"}}] run scoreboard players set #speed cppValue -24
execute as @s[nbt={Item:{id:"minecraft:golden_sword"}}] run scoreboard players set #speed cppValue -24
execute as @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run scoreboard players set #speed cppValue -24
execute as @s[nbt={Item:{id:"minecraft:iron_axe"}}] run scoreboard players set #speed cppValue -31
execute as @s[nbt={Item:{id:"minecraft:stone_axe"}}] run scoreboard players set #speed cppValue -32
execute as @s[nbt={Item:{id:"minecraft:golden_axe"}}] run scoreboard players set #speed cppValue -30
execute as @s[nbt={Item:{id:"minecraft:diamond_axe"}}] run scoreboard players set #speed cppValue -30
execute as @s[nbt={Item:{id:"minecraft:trident"}}] run scoreboard players set #speed cppValue -29

execute if score #temp0 cppRandom matches 1.. run scoreboard players operation #damage cppValue += #temp0 cppRandom
execute if score #temp0 cppRandom matches 1.. run scoreboard players operation #damage cppValue += #temp0 cppRandom
execute if score #temp2 cppRandom matches 1.. run scoreboard players operation #speed cppValue += #temp2 cppRandom
execute if score #temp2 cppRandom matches 1.. run scoreboard players operation #speed cppValue += #temp2 cppRandom
execute if score #temp2 cppRandom matches 1.. run scoreboard players operation #speed cppValue += #temp2 cppRandom
execute if score #temp2 cppRandom matches 1.. run scoreboard players operation #speed cppValue += #temp2 cppRandom

data merge entity @s {Item:{tag:{AttributeModifiers:[{Operation:0,Amount:0,AttributeName:"generic.attackDamage",Name:"mainhand_attackDamage",UUIDLeast:10,UUIDMost:520,Slot:"mainhand"},{Operation:0,Amount:0,AttributeName:"generic.attackSpeed",Name:"mainhand_attackSpeed",UUIDLeast:11,UUIDMost:520,Slot:"mainhand"},{Operation:0,Amount:0,AttributeName:"generic.movementSpeed",Name:"mainhand_movementSpeed",UUIDLeast:12,UUIDMost:520,Slot:"mainhand"},{Operation:0,Amount:0,AttributeName:"generic.luck",Name:"mainhand_luck",UUIDLeast:13,UUIDMost:520,Slot:"mainhand"}]}}}

execute if score #temp4 cppRandom matches 1.. store result entity @s Item.tag.AttributeModifiers[3].Amount double 0.5 run scoreboard players get #temp4 cppRandom
execute if score #temp3 cppRandom matches 1.. store result entity @s Item.tag.AttributeModifiers[2].Amount double 0.005 run scoreboard players get #temp3 cppRandom
execute store result entity @s Item.tag.AttributeModifiers[1].Amount double 0.1 run scoreboard players get #speed cppValue
execute store result entity @s Item.tag.AttributeModifiers[0].Amount double 1 run scoreboard players get #damage cppValue

execute if score #temp4 cppRandom matches ..0 run data remove entity @s Item.tag.AttributeModifiers[3]
execute if score #temp3 cppRandom matches ..0 run data remove entity @s Item.tag.AttributeModifiers[2]

scoreboard players reset @s cppTick
scoreboard players reset @s cppRitualType
data remove block ~ ~-1 ~ Items
tag @s remove cpp_rituals_item


