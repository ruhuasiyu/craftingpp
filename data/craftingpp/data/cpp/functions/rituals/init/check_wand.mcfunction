scoreboard players set @s cppWandLevel 0
# 接口
function #cpp:more_wand
scoreboard players set @s[predicate=cpp:mainhand/sealing_wand] cppWandLevel 1
scoreboard players set @s[predicate=cpp:mainhand/star_wand] cppWandLevel 2
scoreboard players set @s[predicate=cpp:mainhand/dream_wand] cppWandLevel 3
scoreboard players set @s[predicate=cpp:mainhand/wand_of_the_darkness] cppWandLevel 16
scoreboard players set @s[scores={cppWandLevel=0},predicate=cpp:offhand/sealing_wand] cppWandLevel 1
scoreboard players set @s[scores={cppWandLevel=0},predicate=cpp:offhand/star_wand] cppWandLevel 2
scoreboard players set @s[scores={cppWandLevel=0},predicate=cpp:offhand/dream_wand] cppWandLevel 3
scoreboard players set @s[scores={cppWandLevel=0},predicate=cpp:offhand/wand_of_the_darkness] cppWandLevel 16

execute as @s[scores={cppWandLevel=1..3}] at @s anchored eyes run function cpp:rituals/init/ray
execute as @s[scores={cppWandLevel=16}] at @s anchored eyes run function cpp:rituals/init/ray_dark
scoreboard players reset @s cppWandLevel
