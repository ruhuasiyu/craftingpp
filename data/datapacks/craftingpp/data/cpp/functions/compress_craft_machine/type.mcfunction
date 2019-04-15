execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:12b}].Count

execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:wheat"}] run scoreboard players set @s cppMacType 1
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:melon_slice"}] run scoreboard players set @s cppMacType 2
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:dried_kelp"}] run scoreboard players set @s cppMacType 3
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:nether_wart"}] run scoreboard players set @s cppMacType 4
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:slime_ball"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:bone_meal"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:splint"}}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:coal"}] run scoreboard players set @s cppMacType 8
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:iron_ingot"}] run scoreboard players set @s cppMacType 9
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:gold_ingot"}] run scoreboard players set @s cppMacType 10
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:redstone"}] run scoreboard players set @s cppMacType 11
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:lapis_lazuli"}] run scoreboard players set @s cppMacType 12
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:diamond"}] run scoreboard players set @s cppMacType 13
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:emerald"}] run scoreboard players set @s cppMacType 14
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:iron_nugget"}] run scoreboard players set @s cppMacType 15
execute if score #temp cppValue matches 9.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:gold_nugget"}] run scoreboard players set @s cppMacType 16

execute if score #temp cppValue matches 4.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:rabbit_hide"}] run scoreboard players set @s cppMacType 41
execute if score #temp cppValue matches 4.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:snowball"}] run scoreboard players set @s cppMacType 42
execute if score #temp cppValue matches 4.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:glowstone_dust"}] run scoreboard players set @s cppMacType 43
execute if score #temp cppValue matches 4.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:clay_ball"}] run scoreboard players set @s cppMacType 44
execute if score #temp cppValue matches 4.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:quartz"}] run scoreboard players set @s cppMacType 45

execute as @s[scores={cppMacType=1..45}] run function cpp:compress_craft_machine/done
