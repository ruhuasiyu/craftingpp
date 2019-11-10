data merge entity @s {PortalCooldown:900}
# 模式
execute as @s[tag=cpp_golem_break] run function cpp:golem/break
execute as @s[tag=cpp_golem_use] run function cpp:golem/use
# 拾取物品和经验球
execute if entity @e[type=experience_orb,distance=..1.5] run function cpp:golem/xp
execute if entity @e[type=item,distance=..2,nbt=!{Age:0s},nbt=!{Age:1s}] unless data entity @s HandItems[1].tag.BlockEntityTag.Items[{Slot:26b}] run function cpp:golem/item
execute as @s[scores={cppStoredxp=9..}] run function cpp:golem/xp_bottle
# 返回出生点
execute positioned ~ -10 ~ if entity @s[dy=10] run function cpp:golem/control_back
execute if score @s cppTick > #golemMoveMax cppValue run function cpp:golem/control_back
# 行为
scoreboard players add @s cppTick 1
execute if block ~ ~ ~ #cpp:golem_control_blocks run function cpp:golem/control
execute as @s[scores={cppGolemFace=0}] run tp @s ~1 ~0 ~0 270 0
execute as @s[scores={cppGolemFace=1}] run tp @s ~0 ~0 ~1 0 0
execute as @s[scores={cppGolemFace=2}] run tp @s ~-1 ~0 ~0 90 0
execute as @s[scores={cppGolemFace=3}] run tp @s ~0 ~0 ~-1 180 0
execute as @s[scores={cppGolemFace=4}] run tp @s ~0 ~1 ~0 0 90
execute as @s[scores={cppGolemFace=5}] run tp @s ~0 ~-1 ~0 0 -90
