advancement grant @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:green_hat"}}]}] only cpp:forgive
advancement grant @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:cat_breed"}}]}] only cpp:meow

effect give @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:glow_hat"}}]}] glowing 5
execute as @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:glass_helmet"}}]}] at @s anchored eyes unless block ~ ~ ~ water run effect give @s water_breathing 5
execute as @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:purple_eye"}}]}] at @s run effect give @e[tag=cpp_wild_grass,distance=..100] glowing 5
