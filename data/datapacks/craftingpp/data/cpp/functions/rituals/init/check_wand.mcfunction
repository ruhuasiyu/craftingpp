#scoreboard players set @s[nbt={SelectedItem:{id:"abyssalcraft:drainstaff"}}] cppWandLevel 1

scoreboard players set @s[nbt={SelectedItem:{tag:{id:"cpp:sealing_wand"}}}] cppWandLevel 1
scoreboard players set @s[nbt={SelectedItem:{tag:{id:"cpp:star_wand"}}}] cppWandLevel 2
scoreboard players set @s[nbt={SelectedItem:{tag:{id:"cpp:dream_wand"}}}] cppWandLevel 3
scoreboard players set @s[nbt={SelectedItem:{tag:{id:"cpp:wand_of_the_darkness"}}}] cppWandLevel 16

execute as @s[scores={cppWandLevel=1..3}] at @s anchored eyes run function cpp:rituals/init/ray
execute as @s[scores={cppWandLevel=16}] at @s anchored eyes run function cpp:rituals/init/ray_dark
scoreboard players reset @s cppInsDisp
scoreboard players reset @s cppWandLevel
