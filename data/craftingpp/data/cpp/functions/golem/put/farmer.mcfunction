summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_temp","cpp_golem_farmer"],HandItems:[{Count:1b,id:"minecraft:netherite_hoe"},{Count:1b,id:"minecraft:shulker_box"}],ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12970131}}],Pose:{RightArm:[-22.5f,0f,0f],LeftArm:[-22.5f,0f,0f]}}
data modify entity @e[type=armor_stand,tag=cpp_temp,sort=nearest,limit=1,distance=..2] HandItems[0].tag set from storage cpp:golem put
data modify entity @e[type=armor_stand,tag=cpp_temp,sort=nearest,limit=1,distance=..2] HandItems[1] set from storage cpp:golem put.storage
tag @e[type=armor_stand,tag=cpp_temp,distance=..2] remove cpp_temp
