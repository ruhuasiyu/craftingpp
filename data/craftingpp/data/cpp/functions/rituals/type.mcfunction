execute as @s[scores={cppWandLevel=1..3},nbt={Item:{id:"minecraft:book"}}] positioned ~ ~-1 ~ if predicate cpp:rituals/center if predicate cpp:rituals/book run function cpp:rituals/type_book
execute as @s[scores={cppWandLevel=2..3}] if data entity @s Item if predicate cpp:rituals/experience_bottle if predicate cpp:rituals/center if predicate cpp:rituals/effect run function cpp:rituals/type_effect
execute as @s[scores={cppWandLevel=3}] if data entity @s Item if predicate cpp:rituals/center if predicate cpp:rituals/attr run function cpp:rituals/type_attr
execute as @s[scores={cppWandLevel=16},nbt={Item:{tag:{id:"cpp:broken_spawner"}}}] if predicate cpp:rituals/spawner if predicate cpp:rituals/center run function cpp:rituals/type_spawner

execute as @s[tag=!cpp_ritual_work] run function cpp:rituals/fail
tag @s remove cpp_ritual_work
