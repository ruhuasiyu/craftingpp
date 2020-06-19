execute as @s[predicate=cpp:offhand/blue_force_of_sky] run function cpp:cst/element/blue
execute as @s[predicate=cpp:offhand/green_force_of_water] unless score @s cppSneakTime matches 1 at @s anchored eyes run function cpp:cst/element/green
execute as @s[predicate=cpp:offhand/green_force_of_water,scores={cppSneakTime=1}] at @s anchored eyes run function cpp:cst/element/green_put
execute as @s[predicate=cpp:offhand/cyan_force_of_mountain] at @s run function cpp:cst/element/cyan
execute as @s[predicate=cpp:offhand/orange_force_of_dirt] at @s anchored eyes run function cpp:cst/element/orange
execute as @s[predicate=cpp:offhand/yellow_force_of_earth] at @s run function cpp:cst/element/yellow
execute as @s[predicate=cpp:offhand/red_force_of_fire] at @s anchored eyes run function cpp:cst/element/red
execute as @s[predicate=cpp:offhand/purple_force_of_life] at @s run function cpp:cst/element/purple
execute as @s[predicate=cpp:offhand/white_force_of_lightning] run function cpp:cst/element/white
execute as @s[predicate=cpp:offhand/black_force_of_moon] at @s run function cpp:cst/element/black

execute as @s[predicate=cpp:offhand/portable_crafting_table] at @s anchored eyes run function cpp:tool/portable_crafting_table
execute as @s[predicate=cpp:offhand/portable_crafting_machine] at @s anchored eyes run function cpp:tool/portable_crafting_machine

execute as @s[predicate=cpp:offhand/switch] run loot replace entity @s weapon.offhand loot cpp:misc/switch_off
execute as @s[predicate=cpp:offhand/time_conditioner] run function cpp:tool/time_conditioner
execute as @s[predicate=cpp:offhand/time_checker] run function cpp:tool/time_checker_add
execute as @s[predicate=cpp:offhand/origin_of_the_world] run function cpp:tool/origin_of_the_world
execute as @s[predicate=cpp:offhand/compressor] at @s run function cpp:tool/compressor
execute as @s[predicate=cpp:offhand/coordinate_recorder1,scores={cppSneakTime=1..}] at @s anchored eyes run function cpp:tool/coordinate_recorder_pos
execute as @s[predicate=cpp:offhand/coordinate_recorder] unless entity @s[scores={cppSneakTime=1..}] at @s run function cpp:tool/coordinate_recorder_off
execute as @s[predicate=cpp:offhand/chest_transporter] at @s anchored eyes run function cpp:tool/chest_transporter_ray
execute as @s[predicate=cpp:offhand/santa_gift] at @s anchored eyes run function cpp:tool/santa_gift
execute as @s[predicate=cpp:offhand/santa_gift] at @s as @e[distance=..16] run data merge entity @s {Silent:1b}

execute as @s[predicate=cpp:offhand/golem] at @s anchored eyes run function cpp:golem/put/type
execute as @s[predicate=cpp:offhand/character] at @s anchored eyes run function cpp:decor/character_ray
execute as @s[predicate=cpp:offhand/sealing_wand] at @s run function cpp:rituals/init/check_wand
execute as @s[predicate=cpp:offhand/star_wand] at @s run function cpp:rituals/init/check_wand
execute as @s[predicate=cpp:offhand/dream_wand] at @s run function cpp:rituals/init/check_wand
execute as @s[predicate=cpp:offhand/wand_of_the_darkness] at @s run function cpp:rituals/init/check_wand

execute as @s[predicate=cpp:offhand/machine_plugin] at @s anchored eyes run function cpp:all_in_one_machine/plugin/ray
