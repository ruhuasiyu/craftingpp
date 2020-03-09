execute unless block ~ ~ ~ water run function cpp:golem/control_end
execute unless entity @s[scores={cppTick=1..}] run function cpp:golem/fisher_init
scoreboard players remove @s cppTick 1
execute as @s[scores={cppTick=0}] run function cpp:golem/fisher_done
