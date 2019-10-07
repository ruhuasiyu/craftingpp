data modify storage cpp_block:dist Item set from entity @s HandItems[1].tag.BlockEntityTag.Items[0]
function cpp_block:dist/pos
data remove entity @s[tag=cpp_block_dist_success] HandItems[1].tag.BlockEntityTag.Items[0]
execute as @s[tag=cpp_block_dist_success] if data entity @s HandItems[1].tag.BlockEntityTag.Items[] run function cpp:golem/control_out
