data modify storage cpp_block:dist Item set from block ~ ~ ~ Items[{Slot:15b}]
function cpp_block:dist
execute as @s[tag=cpp_block_dist_success] run data remove block ~ ~ ~ Items[{Slot:15b}]
data remove storage cpp_block:dist Item
