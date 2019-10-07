data modify storage cpp_block:dist Item set from block ~ ~ ~ Items[{Slot:21b}]
function cpp_block:dist
execute as @s[tag=cpp_block_dist_success] run data remove block ~ ~ ~ Items[{Slot:21b}]
data remove storage cpp_block:dist Item
execute if data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{isMachineBg:1b}}] run function cpp:all_in_one_machine/dist2