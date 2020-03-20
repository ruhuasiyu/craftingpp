data merge entity @s {PortalCooldown:900}
# 收割
execute if block ~ ~ ~ #cpp:farmer_harvest run function cpp:golem/farmer_harvest
# 种植
execute if block ~ ~ ~ #cpp:air run function cpp:golem/plant
# 拾取物品
execute if entity @e[type=item,distance=..2,nbt=!{Age:0s},nbt=!{Age:1s}] unless data entity @s HandItems[1].tag.BlockEntityTag.Items[{Slot:26b}] run function cpp:golem/item
# 行为
execute if block ~ ~ ~ #cpp:golem_control_blocks run function cpp:golem/control
execute as @s[scores={cppGolemFace=0}] run tp @s ~1 ~0 ~0 270 0
execute as @s[scores={cppGolemFace=1}] run tp @s ~0 ~0 ~1 0 0
execute as @s[scores={cppGolemFace=2}] run tp @s ~-1 ~0 ~0 90 0
execute as @s[scores={cppGolemFace=3}] run tp @s ~0 ~0 ~-1 180 0
execute as @s[scores={cppGolemFace=4}] run tp @s ~0 ~1 ~0 0 90
execute as @s[scores={cppGolemFace=5}] run tp @s ~0 ~-1 ~0 0 -90
scoreboard players add @s cppTick 1
execute as @s[scores={cppTick=64..}] run function cpp:golem/move_back