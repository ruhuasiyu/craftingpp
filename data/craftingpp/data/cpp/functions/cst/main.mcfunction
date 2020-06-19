execute as @s[predicate=cpp:mainhand/blue_force_of_sky] run function cpp:cst/element/blue
execute as @s[predicate=cpp:mainhand/green_force_of_water] unless score @s cppSneakTime matches 1 at @s anchored eyes run function cpp:cst/element/green
execute as @s[predicate=cpp:mainhand/green_force_of_water,scores={cppSneakTime=1}] at @s anchored eyes run function cpp:cst/element/green_put
execute as @s[predicate=cpp:mainhand/cyan_force_of_mountain] at @s run function cpp:cst/element/cyan
execute as @s[predicate=cpp:mainhand/orange_force_of_dirt] at @s anchored eyes run function cpp:cst/element/orange
execute as @s[predicate=cpp:mainhand/yellow_force_of_earth] at @s run function cpp:cst/element/yellow
execute as @s[predicate=cpp:mainhand/red_force_of_fire] at @s anchored eyes run function cpp:cst/element/red
execute as @s[predicate=cpp:mainhand/purple_force_of_life] at @s anchored eyes run function cpp:cst/element/purple
execute as @s[predicate=cpp:mainhand/white_force_of_lightning] at @s run function cpp:cst/element/white
execute as @s[predicate=cpp:mainhand/black_force_of_moon] at @s run function cpp:cst/element/black

execute as @s[predicate=cpp:mainhand/portable_crafting_table] at @s anchored eyes run function cpp:tool/portable_crafting_table
execute as @s[predicate=cpp:mainhand/portable_crafting_machine] at @s anchored eyes run function cpp:tool/portable_crafting_machine

execute as @s[predicate=cpp:mainhand/switch] run loot replace entity @s weapon.mainhand loot cpp:misc/switch_main
execute as @s[predicate=cpp:mainhand/time_conditioner] run function cpp:tool/time_conditioner
execute as @s[predicate=cpp:mainhand/time_checker] run function cpp:tool/time_checker_add
execute as @s[predicate=cpp:mainhand/origin_of_the_world] run function cpp:tool/origin_of_the_world
execute as @s[predicate=cpp:mainhand/compressor] at @s run function cpp:tool/compressor
execute as @s[predicate=cpp:mainhand/coordinate_recorder1,scores={cppSneakTime=1..}] at @s anchored eyes run function cpp:tool/coordinate_recorder_pos
execute as @s[predicate=cpp:mainhand/coordinate_recorder] at @s unless entity @s[scores={cppSneakTime=1..}] run function cpp:tool/coordinate_recorder_main
execute as @s[predicate=cpp:mainhand/chest_transporter] at @s anchored eyes run function cpp:tool/chest_transporter_ray
execute as @s[predicate=cpp:mainhand/santa_gift] at @s anchored eyes run function cpp:tool/santa_gift
execute as @s[predicate=cpp:mainhand/santa_gift] at @s as @e[distance=..16] run data merge entity @s {Silent:1b}

execute as @s[predicate=cpp:mainhand/golem] at @s anchored eyes run function cpp:golem/put/type
execute as @s[predicate=cpp:mainhand/character] at @s anchored eyes run function cpp:decor/character_ray
execute as @s[predicate=cpp:mainhand/sealing_wand] at @s run function cpp:rituals/init/check_wand
execute as @s[predicate=cpp:mainhand/star_wand] at @s run function cpp:rituals/init/check_wand
execute as @s[predicate=cpp:mainhand/dream_wand] at @s run function cpp:rituals/init/check_wand
execute as @s[predicate=cpp:mainhand/wand_of_the_darkness] at @s run function cpp:rituals/init/check_wand

execute as @s[predicate=cpp:mainhand/machine_plugin] at @s anchored eyes run function cpp:all_in_one_machine/plugin/ray
