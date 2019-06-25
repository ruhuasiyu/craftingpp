execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function cpp:use_carrot_on_a_stick/mainhand
execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function cpp:use_carrot_on_a_stick/offhand
scoreboard players reset @s cppUseCSt
