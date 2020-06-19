data modify storage cpp:temp tool set from entity @s Item
function cpp:misc/damage
data modify entity @s Item set from storage cpp:temp tool
kill @s[predicate=cpp:item/broken_shears]
