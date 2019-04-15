execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run function cpp:use_carrot_on_a_stick/mainhand
execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run function cpp:use_carrot_on_a_stick/offhand
tag @s remove cpp_has_enough_xp
scoreboard players reset @s cppUseCSt
