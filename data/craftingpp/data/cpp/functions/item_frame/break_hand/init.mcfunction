summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_break_hand"],HandItems:[{id:"minecraft:firework_star",Count:1b},{}]}
data modify entity @e[type=minecraft:armor_stand,tag=cpp_break_hand,distance=..1,limit=1] HandItems[0].tag set from entity @s Item.tag
data modify entity @e[type=minecraft:armor_stand,tag=cpp_break_hand,distance=..1,limit=1] HandItems[0].tag.CustomModelData set value 12970000
