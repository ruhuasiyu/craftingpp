execute as @e[type=sheep,distance=..9,nbt={Sheared:0b},limit=1] run loot spawn ~ ~ ~ loot cpp:misc/wool
data merge entity @e[type=sheep,distance=..9,nbt={Sheared:0b},limit=1] {Sheared:1b}

data modify storage cpp:damage Item set from block ~ ~-1 ~ Items[{id:"minecraft:shears"}]
function cpp:misc/damage
data modify block ~ ~-1 ~ Items append from storage cpp:toughen_hand Item
data remove block ~ ~-1 ~ Items[{id:"minecraft:shears",tag:{Damage:238}}]






