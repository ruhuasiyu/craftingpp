advancement grant @s only cpp:elements
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:7967,Marker:1b,Tags:["cpp_elements_rotx"]}
execute store result entity @e[type=armor_stand,tag=cpp_elements_rotx,distance=..1,sort=nearest,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[type=armor_stand,tag=cpp_elements_rotx,distance=..1,sort=nearest,limit=1] at @s run function cpp:cst/element/black2
kill @e[type=armor_stand,tag=cpp_elements_rotx,distance=..1]
