execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:12b}].Count

execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:diamond"}] run scoreboard players set @s cppMacType 1

execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:enchanted_book"}] run scoreboard players set @s cppMacType 2
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:compass"}] run scoreboard players set @s cppMacType 2

execute if score #temp cppValue matches 4.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:rabbit_foot"}] run scoreboard players set @s cppMacType 3
execute if score #temp cppValue matches 4.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:scute"}] run scoreboard players set @s cppMacType 3
execute if score #temp cppValue matches 4.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:written_book"}] run scoreboard players set @s cppMacType 3

execute if score #temp cppValue matches 8.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:pumpkin"}] run scoreboard players set @s cppMacType 4
execute if score #temp cppValue matches 8.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:melon"}] run scoreboard players set @s cppMacType 4
execute if score #temp cppValue matches 8.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:leather"}] run scoreboard players set @s cppMacType 4
execute if score #temp cppValue matches 8.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book"}] run scoreboard players set @s cppMacType 4
execute if score #temp cppValue matches 8.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:iron_ingot"}] run scoreboard players set @s cppMacType 4
execute if score #temp cppValue matches 8.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:gold_ingot"}] run scoreboard players set @s cppMacType 4
execute if score #temp cppValue matches 8.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:spider_eye"}] run scoreboard players set @s cppMacType 4
execute if score #temp cppValue matches 8.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:clay"}] run scoreboard players set @s cppMacType 4

execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:wheat"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:potato"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:carrot"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:beetroot"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:nether_wart"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:chorus_fruit"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:porkchop"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:chicken"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:beef"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:mutton"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:rabbit"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:egg"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:white_wool"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:string"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:bone"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:ender_pearl"}] run scoreboard players set @s cppMacType 
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:coal"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:lapis_lazuli"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:glowstone_dust"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:redstone"}] run scoreboard players set @s cppMacType 5
execute if score #temp cppValue matches 16.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:quartz"}] run scoreboard players set @s cppMacType 5

execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:seagrass"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:kelp"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:paper"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:charcoal"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:flint"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:cod"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:salmon"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:tropical_fish"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:pufferfish"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:feather"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:rotten_flesh"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:gunpowder"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:blaze_powder"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:prismarine_crystals"}] run scoreboard players set @s cppMacType 6
execute if score #temp cppValue matches 32.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:glass"}] run scoreboard players set @s cppMacType 6

execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:bamboo"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:sweet_berries"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:slime_ball"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:arrow"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:white_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:orange_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:magenta_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:light_blue_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:yellow_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:lime_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:pink_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:gray_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:light_gray_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:cyan_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:purple_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:blue_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:brown_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:green_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:red_dye"}] run scoreboard players set @s cppMacType 7
execute if score #temp cppValue matches 48.. if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:black_dye"}] run scoreboard players set @s cppMacType 7

execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:emerald"}] run scoreboard players set @s cppMacType 8

execute as @s[scores={cppMacType=1..8}] run function cpp:trade_machine/done
