data modify storage cpp:dist Item set from block ~ ~ ~ Items[{Slot:15b}]
function cpp:dist
execute as @s[tag=cpp_dist_success] run data remove block ~ ~ ~ Items[{Slot:15b}]
data remove storage cpp:dist Item
