execute as @s[nbt={SelectedItem:{tag:{id:"cpp:blue_force_of_sky"}}}] run function cpp:use_carrot_on_a_stick/elements/blue
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:green_force_of_water"}}}] at @s anchored eyes run function cpp:use_carrot_on_a_stick/elements/green
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:cyan_force_of_mountain"}}}] at @s run function cpp:use_carrot_on_a_stick/elements/cyan
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:orange_force_of_dirt"}}}] at @s anchored eyes run function cpp:use_carrot_on_a_stick/elements/orange
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:yellow_force_of_earth"}}}] at @s run function cpp:use_carrot_on_a_stick/elements/yellow
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:red_force_of_fire"}}}] at @s anchored eyes run function cpp:use_carrot_on_a_stick/elements/red
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:purple_force_of_life"}}}] at @s anchored eyes run function cpp:use_carrot_on_a_stick/elements/purple
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:white_force_of_lightning"}}}] run function cpp:use_carrot_on_a_stick/elements/white
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:black_force_of_moon"}}}] at @s run function cpp:use_carrot_on_a_stick/elements/black

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:magnet"}}}] run function cpp:use_carrot_on_a_stick/tool/magnet

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:time_conditioner"}}}] run function cpp:use_carrot_on_a_stick/tool/time_conditioner
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:time_checker"}}}] run function cpp:use_carrot_on_a_stick/tool/time_checker
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:origin_of_the_world"}}}] run function cpp:use_carrot_on_a_stick/tool/origin_of_the_world
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:compressor"}}}] at @s run function cpp:use_carrot_on_a_stick/tool/compressor
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:coordinate_recorder",hasRecord:1b}}},scores={cppSneakTime=1..}] at @s anchored eyes run function cpp:use_carrot_on_a_stick/tool/coordinate_recorder_pos
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:coordinate_recorder"}}}] at @s unless entity @s[scores={cppSneakTime=1..}] run function cpp:use_carrot_on_a_stick/tool/coordinate_recorder_main
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] at @s anchored eyes run function cpp:use_carrot_on_a_stick/tool/chest_transporter_ray
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:santa_gift"}}}] at @s anchored eyes run function cpp:use_carrot_on_a_stick/tool/santa_gift

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:equipped_golem"}}}] at @s anchored eyes run function cpp:use_carrot_on_a_stick/golem/type

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:temperancer"}}}] run function cpp:use_carrot_on_a_stick/rituals/temperancer
execute as @s[tag=!cpp_used,nbt={SelectedItem:{tag:{id:"cpp:temperancer_closed"}}}] run function cpp:use_carrot_on_a_stick/rituals/temperancer_closed
tag @s remove cpp_used

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:character"}}}] at @s anchored eyes run function cpp:decor/character_ray

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:sealing_wand"}}}] at @s run function cpp:rituals/init/check_wand
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:star_wand"}}}] at @s run function cpp:rituals/init/check_wand
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:dream_wand"}}}] at @s run function cpp:rituals/init/check_wand
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:wand_of_the_darkness"}}}] at @s run function cpp:rituals/init/check_wand
