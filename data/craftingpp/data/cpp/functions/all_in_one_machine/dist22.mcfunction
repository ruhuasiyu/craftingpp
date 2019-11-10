data modify storage cpp:dist Item set from block ~ ~ ~ Items[{Slot:22b}]
function cpp:dist/type
data remove storage cpp:dist Item
execute as @s[tag=cpp_dist_success] run replaceitem block ~ ~ ~ container.22 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000,id:"cpp:gui/all_in_one_machine/22"}