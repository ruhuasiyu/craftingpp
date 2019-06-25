# 接口
function #cpp:mob_projector

scoreboard players set @s cppMacType 0

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:white_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:orange_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:magenta_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:light_blue_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:yellow_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:lime_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:pink_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:gray_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:light_gray_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:cyan_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:purple_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:blue_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:brown_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:green_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:red_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:black_wool"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:leather"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 2

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:porkchop"},{Slot:22b,id:"minecraft:carrot"}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:porkchop"},{Slot:22b,id:"minecraft:potato"}]} run scoreboard players set @s cppMacType 3

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:feather"},{Slot:22b,id:"minecraft:wheat_seeds"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:feather"},{Slot:22b,id:"minecraft:beetroot_seeds"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:feather"},{Slot:22b,id:"minecraft:pumpkin_seeds"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:feather"},{Slot:22b,id:"minecraft:melon_seeds"}]} run scoreboard players set @s cppMacType 4

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:rabbit_hide"},{Slot:22b,id:"minecraft:carrot"}]} run scoreboard players set @s cppMacType 5
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:rabbit_hide"},{Slot:22b,id:"minecraft:dandelion"}]} run scoreboard players set @s cppMacType 5

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:feather"},{Slot:22b,id:"minecraft:charcoal"}]} run scoreboard players set @s cppMacType 6

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ink_sac"},{Slot:22b,id:"minecraft:cod"}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ink_sac"},{Slot:22b,id:"minecraft:salmon"}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ink_sac"},{Slot:22b,id:"minecraft:tropical_fish"}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ink_sac"},{Slot:22b,id:"minecraft:pufferfish"}]} run scoreboard players set @s cppMacType 7

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:gunpowder"},{Slot:22b,id:"minecraft:sand"}]} run scoreboard players set @s cppMacType 8
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:gunpowder"},{Slot:22b,id:"minecraft:red_sand"}]} run scoreboard players set @s cppMacType 8

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:rotten_flesh"},{Slot:22b,id:"minecraft:iron_nugget"}]} run scoreboard players set @s cppMacType 9

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:bone"},{Slot:22b,id:"minecraft:arrow"}]} run scoreboard players set @s cppMacType 10

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:string"},{Slot:22b,id:"minecraft:spider_eye"}]} run scoreboard players set @s cppMacType 11

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:stone_bricks"},{Slot:22b,id:"minecraft:iron_nugget"}]} run scoreboard players set @s cppMacType 12



execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:redstone"},{Slot:22b,id:"minecraft:glowstone_dust"}]} run scoreboard players set @s cppMacType 21

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:slime_ball"},{Slot:22b,id:"minecraft:clay_ball"}]} run scoreboard players set @s cppMacType 22

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:phantom_membrane"},{Slot:22b,id:"minecraft:feather"}]} run scoreboard players set @s cppMacType 23

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ice"},{Slot:22b,id:"minecraft:cod"}]} run scoreboard players set @s cppMacType 24
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ice"},{Slot:22b,id:"minecraft:salmon"}]} run scoreboard players set @s cppMacType 24
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ice"},{Slot:22b,id:"minecraft:tropical_fish"}]} run scoreboard players set @s cppMacType 24
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ice"},{Slot:22b,id:"minecraft:pufferfish"}]} run scoreboard players set @s cppMacType 24

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:gold_nugget"},{Slot:22b,id:"minecraft:rotten_flesh"}]} run scoreboard players set @s cppMacType 25

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ghast_tear"},{Slot:22b,id:"minecraft:gunpowder"}]} run scoreboard players set @s cppMacType 26

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:magma_cream"},{Slot:22b,id:"minecraft:nether_brick"}]} run scoreboard players set @s cppMacType 27

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:blaze_powder"},{Slot:22b,id:"minecraft:nether_brick"}]} run scoreboard players set @s cppMacType 28

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ender_pearl"},{Slot:22b,id:"minecraft:end_stone"}]} run scoreboard players set @s cppMacType 29

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:gold_nugget"},{Slot:22b,id:"minecraft:end_stone"}]} run scoreboard players set @s cppMacType 30

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:emerald"},{Slot:22b,id:"minecraft:book"}]} run scoreboard players set @s cppMacType 31


execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:emerald"},{Slot:22b,id:"minecraft:gold_block"}]} run scoreboard players set @s cppMacType 41
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:emerald"},{Slot:22b,id:"minecraft:iron_block"}]} run scoreboard players set @s cppMacType 42

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:22b,id:"minecraft:cod"}]} run scoreboard players set @s cppMacType 43
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:22b,id:"minecraft:salmon"}]} run scoreboard players set @s cppMacType 43
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:22b,id:"minecraft:tropical_fish"}]} run scoreboard players set @s cppMacType 43
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:22b,id:"minecraft:pufferfish"}]} run scoreboard players set @s cppMacType 43

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:ender_pearl"},{Slot:22b,id:"minecraft:chorus_fruit"}]} run scoreboard players set @s cppMacType 44

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:bone"},{Slot:22b,id:"minecraft:coal_block"}]} run scoreboard players set @s cppMacType 45

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:bone"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 46

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:cod"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 47
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:salmon"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 47
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:tropical_fish"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 47
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:pufferfish"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 47

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:leather"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 48

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:chest"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 49

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:white_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:orange_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:magenta_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:light_blue_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:yellow_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:lime_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:pink_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:gray_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:light_gray_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:cyan_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:purple_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:blue_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:brown_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:green_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:red_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:black_carpet"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:feather"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 51
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:seagrass"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 52
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:sweet_berries"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 53
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:bamboo"},{Slot:22b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 54


execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:white_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:orange_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:magenta_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:light_blue_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:yellow_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:lime_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:pink_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:gray_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:light_gray_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:cyan_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:purple_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:blue_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:brown_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:green_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:red_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:black_wool"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 1

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:leather"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players set @s cppMacType 2

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:porkchop"},{Slot:13b,id:"minecraft:carrot"}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:porkchop"},{Slot:13b,id:"minecraft:potato"}]} run scoreboard players set @s cppMacType 3

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:feather"},{Slot:13b,id:"minecraft:wheat_seeds"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:feather"},{Slot:13b,id:"minecraft:beetroot_seeds"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:feather"},{Slot:13b,id:"minecraft:pumpkin_seeds"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:feather"},{Slot:13b,id:"minecraft:melon_seeds"}]} run scoreboard players set @s cppMacType 4

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:rabbit_hide"},{Slot:13b,id:"minecraft:carrot"}]} run scoreboard players set @s cppMacType 5
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:rabbit_hide"},{Slot:13b,id:"minecraft:dandelion"}]} run scoreboard players set @s cppMacType 5

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:feather"},{Slot:13b,id:"minecraft:charcoal"}]} run scoreboard players set @s cppMacType 6

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ink_sac"},{Slot:13b,id:"minecraft:cod"}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ink_sac"},{Slot:13b,id:"minecraft:salmon"}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ink_sac"},{Slot:13b,id:"minecraft:tropical_fish"}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ink_sac"},{Slot:13b,id:"minecraft:pufferfish"}]} run scoreboard players set @s cppMacType 7

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:gunpowder"},{Slot:13b,id:"minecraft:sand"}]} run scoreboard players set @s cppMacType 8
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:gunpowder"},{Slot:13b,id:"minecraft:red_sand"}]} run scoreboard players set @s cppMacType 8

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:rotten_flesh"},{Slot:13b,id:"minecraft:iron_nugget"}]} run scoreboard players set @s cppMacType 9

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:bone"},{Slot:13b,id:"minecraft:arrow"}]} run scoreboard players set @s cppMacType 10

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:string"},{Slot:13b,id:"minecraft:spider_eye"}]} run scoreboard players set @s cppMacType 11

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:stone_bricks"},{Slot:13b,id:"minecraft:iron_nugget"}]} run scoreboard players set @s cppMacType 12



execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:redstone"},{Slot:13b,id:"minecraft:glowstone_dust"}]} run scoreboard players set @s cppMacType 21

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:slime_ball"},{Slot:13b,id:"minecraft:clay_ball"}]} run scoreboard players set @s cppMacType 22

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:phantom_membrane"},{Slot:13b,id:"minecraft:feather"}]} run scoreboard players set @s cppMacType 23

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ice"},{Slot:13b,id:"minecraft:cod"}]} run scoreboard players set @s cppMacType 24
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ice"},{Slot:13b,id:"minecraft:salmon"}]} run scoreboard players set @s cppMacType 24
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ice"},{Slot:13b,id:"minecraft:tropical_fish"}]} run scoreboard players set @s cppMacType 24
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ice"},{Slot:13b,id:"minecraft:pufferfish"}]} run scoreboard players set @s cppMacType 24

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:gold_nugget"},{Slot:13b,id:"minecraft:rotten_flesh"}]} run scoreboard players set @s cppMacType 25

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ghast_tear"},{Slot:13b,id:"minecraft:gunpowder"}]} run scoreboard players set @s cppMacType 26

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:magma_cream"},{Slot:13b,id:"minecraft:nether_brick"}]} run scoreboard players set @s cppMacType 27

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:blaze_powder"},{Slot:13b,id:"minecraft:nether_brick"}]} run scoreboard players set @s cppMacType 28

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ender_pearl"},{Slot:13b,id:"minecraft:end_stone"}]} run scoreboard players set @s cppMacType 29

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:gold_nugget"},{Slot:13b,id:"minecraft:end_stone"}]} run scoreboard players set @s cppMacType 30

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:emerald"},{Slot:13b,id:"minecraft:book"}]} run scoreboard players set @s cppMacType 31

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:emerald"},{Slot:13b,id:"minecraft:gold_block"}]} run scoreboard players set @s cppMacType 41
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:emerald"},{Slot:13b,id:"minecraft:iron_block"}]} run scoreboard players set @s cppMacType 42

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:13b,id:"minecraft:cod"}]} run scoreboard players set @s cppMacType 43
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:13b,id:"minecraft:salmon"}]} run scoreboard players set @s cppMacType 43
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:13b,id:"minecraft:tropical_fish"}]} run scoreboard players set @s cppMacType 43
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:13b,id:"minecraft:pufferfish"}]} run scoreboard players set @s cppMacType 43

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:ender_pearl"},{Slot:13b,id:"minecraft:chorus_fruit"}]} run scoreboard players set @s cppMacType 44

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:bone"},{Slot:13b,id:"minecraft:coal_block"}]} run scoreboard players set @s cppMacType 45

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:bone"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 46

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:cod"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 47
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:salmon"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 47
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:tropical_fish"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 47
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:pufferfish"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 47

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:leather"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 48

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:chest"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 49

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:white_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:orange_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:magenta_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:light_blue_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:yellow_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:lime_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:pink_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:gray_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:light_gray_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:cyan_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:purple_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:blue_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:brown_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:green_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:red_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:black_carpet"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 50

execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:feather"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 51
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:seagrass"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 52
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:sweet_berries"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 53
execute if block ~ ~ ~ barrel{Items:[{Slot:22b,id:"minecraft:bamboo"},{Slot:13b,id:"minecraft:skeleton_skull"}]} run scoreboard players set @s cppMacType 54

scoreboard players add @s[scores={cppMacType=1..12,cppStoredxp=4..}] cppTick 6
scoreboard players add @s[scores={cppMacType=21..31,cppStoredxp=8..}] cppTick 6
scoreboard players add @s[scores={cppMacType=41..54,cppStoredxp=32..}] cppTick 6

replaceitem block ~ ~ ~ container.9 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
scoreboard players set #temp cppValue 12971100
execute as @s[scores={cppMacType=1..}] store result block ~ ~ ~ Items[{Slot:9b}].tag.CustomModelData int 1 run scoreboard players operation #temp cppValue += @s cppMacType

execute as @s[scores={cppMacType=1..12,cppStoredxp=4..}] if score @s cppTick >= #mob_projector_cd cppValue run function cpp:mob_projector/done1
execute as @s[scores={cppMacType=21..31,cppStoredxp=8..}] if score @s cppTick >= #mob_projector_cd cppValue run function cpp:mob_projector/done2
execute as @s[scores={cppMacType=41..54,cppStoredxp=32..}] if score @s cppTick >= #mob_projector_cd cppValue run function cpp:mob_projector/done3
