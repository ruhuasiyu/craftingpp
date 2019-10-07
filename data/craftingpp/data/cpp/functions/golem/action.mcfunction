execute positioned ~ 256 ~ if entity @s[dy=100] run kill @s
execute positioned ~ -100 ~ if entity @s[dy=100] run kill @s
data merge entity @s {PortalCooldown:900}

execute as @s[tag=cpp_golem_break] run function cpp:golem/break
execute as @s[tag=cpp_golem_use] run function cpp:golem/use
#execute as @s[tag=cpp_golem_farmer] run function cpp:golem/farmer
#execute as @s[tag=cpp_golem_fisher] if block ~ ~ ~ water run function cpp:golem/fisher
#execute as @s[tag=cpp_golem_warrior] if entity @e[type=#cpp:golem_warrier,distance=..1,nbt={Invulnerable:0b}] run function cpp:golem/warrior
#execute as @s[tag=cpp_golem_herder] run function cpp:golem/herder

execute if entity @e[type=minecraft:experience_orb,distance=..1.5] run function cpp:golem/xp
execute if entity @e[type=minecraft:item,distance=..1.5] unless data entity @s HandItems[1].tag.BlockEntityTag.Items[{Slot:26b}] run function cpp:golem/item

execute if block ~ ~ ~ #cpp:golem_control_blocks run function cpp:golem/control

execute as @s[scores={cppGolemFace=0}] run tp @s ~1 ~0 ~0 270 0
execute as @s[scores={cppGolemFace=1}] run tp @s ~0 ~0 ~1 0 0
execute as @s[scores={cppGolemFace=2}] run tp @s ~-1 ~0 ~0 90 0
execute as @s[scores={cppGolemFace=3}] run tp @s ~0 ~0 ~-1 180 0
execute as @s[scores={cppGolemFace=4}] run tp @s ~0 ~1 ~0 0 90
execute as @s[scores={cppGolemFace=5}] run tp @s ~0 ~-1 ~0 0 -90
execute as @s[scores={cppStoredxp=9..}] run function cpp:golem/xp_bottle
