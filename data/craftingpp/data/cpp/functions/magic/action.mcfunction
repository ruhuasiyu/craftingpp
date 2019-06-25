scoreboard players set @s[nbt={SelectedItem:{tag:{id:"cpp:sealing_wand"}}}] cppWandLevel 1
scoreboard players set @s[nbt={SelectedItem:{tag:{id:"cpp:star_wand"}}}] cppWandLevel 2
scoreboard players set @s[nbt={SelectedItem:{tag:{id:"cpp:dream_wand"}}}] cppWandLevel 3

# 召唤术：风
tellraw @s[scores={cppWandLevel=1..,cppMana=..10,cppKey=1}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=1}] at @s anchored eyes run function cpp:magic/wind
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=1}] run scoreboard players remove @s cppMana 10

# 召唤术：火
tellraw @s[scores={cppWandLevel=1..,cppMana=..10,cppKey=2}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=2}] at @s anchored eyes run function cpp:magic/fire
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=2}] run scoreboard players remove @s cppMana 10

# 召唤术：雷
tellraw @s[scores={cppWandLevel=1..,cppMana=..20,cppKey=3}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=20..,cppKey=3}] at @s anchored eyes run function cpp:magic/thunder
execute as @s[scores={cppWandLevel=1..,cppMana=20..,cppKey=3}] run scoreboard players remove @s cppMana 10

# 召唤术：雨
tellraw @s[scores={cppWandLevel=1..,cppMana=..10,cppKey=4}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=4}] run function cpp:magic/rain
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=4}] run scoreboard players remove @s cppMana 10

# 召唤术：灵
tellraw @s[scores={cppWandLevel=1..,cppMana=..5,cppKey=5}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=5..,cppKey=5}] at @s anchored eyes run function cpp:magic/spirit
execute as @s[scores={cppWandLevel=1..,cppMana=5..,cppKey=5}] run scoreboard players remove @s cppMana 5

# 催化术：风
tellraw @s[scores={cppWandLevel=1..,cppMana=..5,cppKey=6}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=5..,cppKey=6}] run function cpp:magic/wind2
execute as @s[scores={cppWandLevel=1..,cppMana=5..,cppKey=6}] run scoreboard players remove @s cppMana 5

# 催化术：火
tellraw @s[scores={cppWandLevel=1..,cppMana=..10,cppKey=7}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=7}] at @s run function cpp:magic/fire2
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=7}] run scoreboard players remove @s cppMana 10

# 催化术：雷
tellraw @s[scores={cppWandLevel=1..,cppMana=..10,cppKey=8}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=8}] at @s run function cpp:magic/thunder2
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=8}] run scoreboard players remove @s cppMana 10

# 催化术：雨
tellraw @s[scores={cppWandLevel=1..,cppMana=..10,cppKey=9}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=9}] at @s run function cpp:magic/rain2
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=9}] run scoreboard players remove @s cppMana 10

# 催化术：灵
tellraw @s[scores={cppWandLevel=1..,cppMana=..10,cppKey=10}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=10}] at @s positioned ~ ~0.5 ~ run function cpp:magic/spirit2
execute as @s[scores={cppWandLevel=1..,cppMana=10..,cppKey=10}] run scoreboard players remove @s cppMana 10

# 催化术：地
tellraw @s[scores={cppWandLevel=1..,cppMana=..30,cppKey=11}] {"translate":"info.cpp.magic.no_mana"}
execute as @s[scores={cppWandLevel=1..,cppMana=30..,cppKey=11}] at @s anchored eyes run function cpp:magic/earth
execute as @s[scores={cppWandLevel=1..,cppMana=30..,cppKey=11}] run scoreboard players remove @s cppMana 30

tag @s remove cpp_has_wand_off
scoreboard players reset @s cppWandLevel
