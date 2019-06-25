data merge entity @s {Item:{Count:1b}}
execute if data entity @s Item.tag.compressedLevel run data remove entity @s Item.tag.display.Lore[-1]
execute unless data entity @s Item.tag.compressedLevel run data merge entity @s[nbt={Item:{tag:{HideFlags:63}}}] {Item:{tag:{has_hideflags:1b}}}
execute unless data entity @s Item.tag.Enchantments run data merge entity @s {Item:{tag:{Enchantments:[]}}}
execute unless data entity @s Item.tag.compressedLevel run data merge entity @s {Item:{tag:{HideFlags:63,compressedLevel:0s}}}

execute as @s[nbt={Item:{tag:{compressedLevel:7s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§6281474976710656×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:6s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§64398046511104×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:5s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§668719476736×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:4s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§61073741824×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:3s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§616777216×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:2s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§6262144×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:1s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§64096×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:0s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§664×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:0s}}}] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:binding_curse"}

scoreboard players set #temp cppValue 0
execute store result score #temp cppValue run data get entity @s Item.tag.compressedLevel
execute store result entity @s Item.tag.compressedLevel short 1 run scoreboard players add #temp cppValue 1

tag @s add cpp_item_compressed