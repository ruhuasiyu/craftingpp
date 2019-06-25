execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:blue_force_of_sky"}}]}] run function cpp:use_carrot_on_a_stick/elements/blue
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:green_force_of_water"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/elements/green
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:cyan_force_of_mountain"}}]}] run function cpp:use_carrot_on_a_stick/elements/cyan
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:orange_force_of_dirt"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/elements/orange
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:yellow_force_of_earth"}}]}] run function cpp:use_carrot_on_a_stick/elements/yellow
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:red_force_of_fire"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/elements/red
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:purple_force_of_life"}}]}] run function cpp:use_carrot_on_a_stick/elements/purple
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:white_force_of_lightning"}}]}] run function cpp:use_carrot_on_a_stick/elements/white
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:black_force_of_moon"}}]}] run function cpp:use_carrot_on_a_stick/elements/black

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:magnet"}}]}] run function cpp:use_carrot_on_a_stick/tool/magnet_off

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:time_conditioner"}}]}] run function cpp:use_carrot_on_a_stick/tool/time_conditioner
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:time_checker"}}]}] run function cpp:use_carrot_on_a_stick/tool/time_checker
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:origin_of_the_world"}}]}] run function cpp:use_carrot_on_a_stick/tool/origin_of_the_world
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:compressor"}}]}] run function cpp:use_carrot_on_a_stick/tool/compressor
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:coordinate_recorder",hasRecord:1b}}]},scores={cppSneakTime=1..}] anchored eyes run function cpp:use_carrot_on_a_stick/tool/coordinate_recorder_pos
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:coordinate_recorder"}}]}] unless entity @s[scores={cppSneakTime=1..}] run function cpp:use_carrot_on_a_stick/tool/coordinate_recorder_off
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:chest_transporter"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/tool/chest_transporter_ray
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:santa_gift"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/tool/santa_gift

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:golem_miner"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/golem/type
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:golem_farmer"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/golem/type
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:golem_fisher"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/golem/type
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:golem_warrior"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/golem/type
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:golem_herder"}}]}] anchored eyes run function cpp:use_carrot_on_a_stick/golem/type

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:temperancer"}}]}] run function cpp:use_carrot_on_a_stick/rituals/temperancer
execute as @s[tag=!cpp_used,nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:temperancer_closed"}}]}] run function cpp:use_carrot_on_a_stick/rituals/temperancer_closed
tag @s remove cpp_used

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:character"}}]}] anchored eyes run function cpp:decor/character_ray
