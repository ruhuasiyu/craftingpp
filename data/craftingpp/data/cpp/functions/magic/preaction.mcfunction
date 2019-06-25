execute as @s[nbt={SelectedItem:{tag:{id:"cpp:sealing_wand"}}}] run function cpp:magic/action
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:star_wand"}}}] run function cpp:magic/action
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:dream_wand"}}}] run function cpp:magic/action
tag @s remove cpp_has_wand_off
