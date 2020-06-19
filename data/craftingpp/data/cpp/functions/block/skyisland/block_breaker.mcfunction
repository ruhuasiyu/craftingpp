summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block_breaker","cpp_need_fire"],Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12970072}}],Fire:32767s}
data merge block ~ ~ ~ {CustomName:'{"italic":false,"translate":"item.cpp.block_breaker"}',Lock:"zsx<3wtt"}
tellraw @s {"translate":"item.cpp.block_breaker.finished"}
setblock ~ ~1 ~ air
