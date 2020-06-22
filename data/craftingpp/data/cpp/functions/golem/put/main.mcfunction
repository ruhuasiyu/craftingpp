function cpp:misc/get_facing
data modify storage cpp:golem put set from entity @s SelectedItem.tag
execute if predicate cpp:mainhand/golem_farmer run function cpp:golem/put/farmer
execute if predicate cpp:mainhand/golem_miner run function cpp:golem/put/miner
execute if predicate cpp:mainhand/golem_fisher run function cpp:golem/put/fisher
execute if predicate cpp:mainhand/golem_warrior run function cpp:golem/put/warrior
execute if predicate cpp:mainhand/golem_herder run function cpp:golem/put/herder
replaceitem entity @s[gamemode=!creative] weapon.mainhand air
