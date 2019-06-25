advancement revoke @s only cpp:block/sign
scoreboard players set @s cppValue 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:oak_sign"}}] store result score @s cppValue run data get entity @s SelectedItem.tag.CustomModelData
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:oak_sign"}}] store result score @s cppValue run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
scoreboard players add @s cppValue 200
execute as @s[scores={cppValue=12970201..12970217}] at @s anchored eyes run function cpp:block/sign_ray
