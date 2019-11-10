data modify storage cpp:dist Item set from storage cpp:trim Items[0]
function cpp:dist/dist
data remove storage cpp:trim Items[0]
execute if data storage cpp:trim Items[0] run function cpp:trim/loop
