execute if block ~ ~ ~ #cpp:air unless block ~ ~-1 ~ #cpp:fluid align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_roost"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:firework_star",tag:{CustomModelData:12970071}}]}
execute if block ~ ~ ~ #cpp:air unless block ~ ~-1 ~ #cpp:fluid run setblock ~ ~ ~ dead_fire_coral_fan[waterlogged=false]
data merge entity @s {EggLayTime:101}
