tellraw @s {"translate":"info.cpp.magic.rain2"}
execute as @s[scores={cppWandLevel=1}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace fire
execute as @s[scores={cppWandLevel=1}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 obsidian replace lava
execute as @s[scores={cppWandLevel=2}] run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace fire
execute as @s[scores={cppWandLevel=2}] run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 obsidian replace lava
execute as @s[scores={cppWandLevel=3}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace fire
execute as @s[scores={cppWandLevel=3}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 obsidian replace lava
