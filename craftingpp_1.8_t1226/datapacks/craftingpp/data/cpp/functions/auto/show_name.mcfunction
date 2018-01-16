scoreboard players set @e[scores={cppCraft=0}] cppTicks 0
execute as @e[scores={cppTicks=0}] run data merge entity @s {CustomNameVisible:false,CustomName:""}
execute as @e[scores={cppTicks=1..}] run data merge entity @s {CustomNameVisible:true}
execute as @e[scores={cppTicks=1..120}] run data merge entity @s {CustomName:"§4▉§7▉▉▉▉▉▉▉▉▉"}
execute as @e[scores={cppTicks=121..240}] run data merge entity @s {CustomName:"§4▉▉§7▉▉▉▉▉▉▉▉"}
execute as @e[scores={cppTicks=241..360}] run data merge entity @s {CustomName:"§4▉▉▉§7▉▉▉▉▉▉▉"}
execute as @e[scores={cppTicks=361..480}] run data merge entity @s {CustomName:"§4▉▉▉▉§7▉▉▉▉▉▉"}
execute as @e[scores={cppTicks=481..600}] run data merge entity @s {CustomName:"§4▉▉▉▉▉§7▉▉▉▉▉"}
execute as @e[scores={cppTicks=601..720}] run data merge entity @s {CustomName:"§4▉▉▉▉▉▉§7▉▉▉▉"}
execute as @e[scores={cppTicks=721..840}] run data merge entity @s {CustomName:"§4▉▉▉▉▉▉▉§7▉▉▉"}
execute as @e[scores={cppTicks=841..960}] run data merge entity @s {CustomName:"§4▉▉▉▉▉▉▉▉§7▉▉"}
execute as @e[scores={cppTicks=961..1080}] run data merge entity @s {CustomName:"§4▉▉▉▉▉▉▉▉▉§7▉"}
execute as @e[scores={cppTicks=1081..}] run data merge entity @s {CustomName:"§4▉▉▉▉▉▉▉▉▉▉"}
