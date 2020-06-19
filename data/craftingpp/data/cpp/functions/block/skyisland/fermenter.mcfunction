summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_fermenter","cpp_need_fire"],Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12970073}}],Fire:32767s}
tellraw @s {"italic":false,"translate":"item.cpp.fermenter.finished"}
setblock ~ ~1 ~ air
