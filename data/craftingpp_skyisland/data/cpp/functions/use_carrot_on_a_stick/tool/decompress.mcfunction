data merge entity @s {Item:{Count:64b}}
data remove entity @s Item.tag.display.Lore[-1]

execute as @s[nbt={Item:{tag:{compressedLevel:1s}}}] run data remove entity @s Item.tag.Enchantments[-1]
execute as @s[nbt={Item:{tag:{compressedLevel:1s}}},nbt=!{Item:{tag:{has_hideflags:1b}}}] run data remove entity @s Item.tag.HideFlags
execute as @s[nbt={Item:{tag:{compressedLevel:1s}}},nbt={Item:{tag:{has_hideflags:1b}}}] run data remove entity @s Item.tag.has_hideflags

execute as @s[nbt={Item:{tag:{compressedLevel:2s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§664×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:3s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§64096×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:4s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§6262144×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:5s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§616777216×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:6s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§61073741824×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:7s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§668719476736×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:8s}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"§64398046511104×\"}"

execute store result score #temp cppValue run data get entity @s Item.tag.compressedLevel
execute store result entity @s Item.tag.compressedLevel short 1 run scoreboard players remove #temp cppValue 1

execute as @s[nbt={Item:{tag:{compressedLevel:0s}}}] run data remove entity @s Item.tag.compressedLevel

execute store result score #temp cppValue run data get entity @s Item.tag.display.Lore
execute if score #temp cppValue matches 0 run data remove entity @s Item.tag.display.Lore
execute store result score #temp cppValue run data get entity @s Item.tag.display
execute if score #temp cppValue matches 0 run data remove entity @s Item.tag.display
execute store result score #temp cppValue run data get entity @s Item.tag.Enchantments
execute if score #temp cppValue matches 0 run data remove entity @s Item.tag.Enchantments
execute store result score #temp cppValue run data get entity @s Item.tag
execute if score #temp cppValue matches 0 run data remove entity @s Item.tag
