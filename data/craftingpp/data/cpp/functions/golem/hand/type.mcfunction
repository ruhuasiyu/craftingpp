execute as @s[predicate=cpp:item/industrious_hand] positioned ~ ~2 ~ as @e[type=item,predicate=cpp:item/bone_meal,distance=..2] if block ~ ~ ~ #cpp:industrious_hand run function cpp:golem/hand/industrious_hand
execute as @s[predicate=cpp:item/break_hand] run setblock ~ ~1 ~ air destroy
execute as @s[predicate=cpp:item/smart_hand] if block ~ ~ ~ water run function cpp:golem/hand/smart_hand
execute as @s[predicate=cpp:item/angry_hand] run kill @e[type=#cpp:golem_warrier,distance=..1.5,nbt={Invulnerable:0b}]
execute as @s[predicate=cpp:item/toughen_hand] run function cpp:golem/hand/toughen_hand
