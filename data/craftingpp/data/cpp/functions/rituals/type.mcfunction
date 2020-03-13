execute as @s[scores={cppWandLevel=1..3}] if predicate cpp:item/book if predicate cpp:rituals/book if predicate cpp:rituals/rare_drops1 if predicate cpp:rituals/rare_drops7 run function cpp:rituals/recipes/book
execute as @s[scores={cppWandLevel=2..3}] if data entity @s Item if predicate cpp:rituals/experience_bottle if predicate cpp:rituals/rare_drops4 if predicate cpp:rituals/effect run function cpp:rituals/recipes/effect
execute as @s[scores={cppWandLevel=3}] if data entity @s Item if predicate cpp:rituals/rare_drops4 if predicate cpp:rituals/attr run function cpp:rituals/recipes/attr
execute as @s[scores={cppWandLevel=16}] if predicate cpp:item/broken_spawner if predicate cpp:rituals/spawner if predicate cpp:rituals/rare_drops4 run function cpp:rituals/recipes/spawner

execute as @s[tag=!cpp_ritual_work] run function cpp:rituals/fail
tag @s remove cpp_ritual_work
