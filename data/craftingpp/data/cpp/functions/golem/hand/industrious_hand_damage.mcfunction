data modify storage cpp:hand Item set from entity @s Item
function cpp:misc/damage
data modify entity @s Item set from storage cpp:hand Item
kill @s[predicate=cpp:item/broken_shears]
