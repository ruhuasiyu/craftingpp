execute if entity @s[distance=..6] unless block ~ ~ ~ crafting_table unless block ~ ~1 ~ crafting_table unless block ~ ~-1 ~ crafting_table positioned ^ ^ ^0.005 anchored feet run function cpp:block/portable_crafting_table_ray
execute if block ~ ~ ~ crafting_table align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_portable_crafting_table"]}
execute unless block ~ ~ ~ crafting_table if block ~ ~1 ~ crafting_table align xyz run summon armor_stand ~0.5 ~1.5 ~0.5 {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_portable_crafting_table"]}
execute unless block ~ ~ ~ crafting_table unless block ~ ~1 ~ crafting_table if block ~ ~-1 ~ crafting_table align xyz run summon armor_stand ~0.5 ~-0.5 ~0.5 {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_portable_crafting_table"]}

