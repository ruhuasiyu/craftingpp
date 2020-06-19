scoreboard players enable @a cppSetHome
scoreboard players enable @a cppHome
execute as @a[scores={cppSetHome=1..},predicate=cpp:in_overworld] run function cpp:misc/sethome
execute as @a[scores={cppHome=1..},predicate=cpp:in_overworld] at @s run function cpp:misc/home
