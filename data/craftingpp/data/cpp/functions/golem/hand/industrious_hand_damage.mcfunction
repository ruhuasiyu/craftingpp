data modify storage cpp:damage Item set from entity @s Item
function cpp:misc/damage
data modify entity @s Item set from storage cpp:damage Item
kill @s[predicate=cpp:item/broken_shears]
