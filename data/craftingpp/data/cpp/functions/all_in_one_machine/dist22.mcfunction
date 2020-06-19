data modify storage cpp:dist Item set from block ~ ~ ~ Items[{Slot:22b}]
tag @s remove cpp_dist_success
function cpp:dist/machine
execute as @s[tag=cpp_dist_success] run replaceitem block ~ ~ ~ container.22 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}