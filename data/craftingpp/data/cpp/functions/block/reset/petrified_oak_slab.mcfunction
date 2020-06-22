advancement revoke @s only cpp:block/petrified_oak_slab
execute as @s[predicate=cpp:mainhand/petrified_oak_slab] run data modify storage cpp:block Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/petrified_oak_slab] run data modify storage cpp:block Item set from entity @s Inventory[{Slot:-106b}]

execute store result score #facing cppValue run data get entity @s Rotation[0]
scoreboard players add #facing cppValue 225
execute if score #facing cppValue matches ..-1 run scoreboard players add #facing cppValue 360
execute if score #facing cppValue matches 360.. run scoreboard players remove #facing cppValue 360
scoreboard players operation #facing cppValue /= #90 cppValue

fill ~-6 ~-6 ~-6 ~6 ~6 ~6 command_block{auto:1b,Command:"execute align xyz positioned ~0.5 ~ ~0.5 run function cpp:block/put/petrified_oak_slab"} replace petrified_oak_slab
execute positioned ~ -6 ~ as @s[dy=12] run fill ~-6 0 ~-6 ~6 12 ~6 command_block{auto:1b,Command:"execute align xyz positioned ~0.5 ~ ~0.5 run function cpp:block/put/petrified_oak_slab"} replace petrified_oak_slab
execute positioned ~ 249 ~ as @s[dy=12] run fill ~-6 243 ~-6 ~6 255 ~6 command_block{auto:1b,Command:"execute align xyz positioned ~0.5 ~ ~0.5 run function cpp:block/put/petrified_oak_slab"} replace petrified_oak_slab
