function cpp:misc/get_facing
data modify storage cpp:golem put set from entity @s Inventory[{Slot:-106b}].tag
execute if predicate cpp:offhand/golem_farmer run function cpp:golem/put/farmer
execute if predicate cpp:offhand/golem_miner run function cpp:golem/put/miner
execute if predicate cpp:offhand/golem_fisher run function cpp:golem/put/fisher
execute if predicate cpp:offhand/golem_warrior run function cpp:golem/put/warrior
execute if predicate cpp:offhand/golem_herder run function cpp:golem/put/herder
execute if predicate cpp:offhand/ruhuasiyu run function cpp:golem/put/ruhuasiyu
replaceitem entity @s[gamemode=!creative] weapon.offhand air
