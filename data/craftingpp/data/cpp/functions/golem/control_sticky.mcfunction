execute as @s[scores={cppGolemFace=0}] if block ~1 ~ ~ #cpp:fluids run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ replace move
execute as @s[scores={cppGolemFace=1}] if block ~ ~ ~1 #cpp:fluids run clone ~ ~ ~ ~ ~ ~ ~ ~ ~1 replace move
execute as @s[scores={cppGolemFace=2}] if block ~-1 ~ ~ #cpp:fluids run clone ~ ~ ~ ~ ~ ~ ~-1 ~ ~ replace move
execute as @s[scores={cppGolemFace=3}] if block ~ ~ ~-1 #cpp:fluids run clone ~ ~ ~ ~ ~ ~ ~ ~ ~-1 replace move
execute as @s[scores={cppGolemFace=4}] if block ~ ~1 ~ #cpp:fluids run clone ~ ~ ~ ~ ~ ~ ~ ~1 ~ replace move
execute as @s[scores={cppGolemFace=5}] if block ~ ~-1 ~ #cpp:fluids run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~ replace move
tag @s remove cpp_golem_sticky