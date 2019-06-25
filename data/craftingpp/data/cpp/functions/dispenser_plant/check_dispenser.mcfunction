execute if block ~-1 ~ ~ dispenser[triggered=true,facing=east] run function cpp:dispenser_plant/check_item
execute if block ~1 ~ ~ dispenser[triggered=true,facing=west] run function cpp:dispenser_plant/check_item
execute if block ~ ~ ~1 dispenser[triggered=true,facing=north] run function cpp:dispenser_plant/check_item
execute if block ~ ~ ~-1 dispenser[triggered=true,facing=south] run function cpp:dispenser_plant/check_item
execute if block ~ ~1 ~ dispenser[triggered=true,facing=down] run function cpp:dispenser_plant/check_item
execute if block ~ ~-1 ~ dispenser[triggered=true,facing=up] run function cpp:dispenser_plant/check_item
