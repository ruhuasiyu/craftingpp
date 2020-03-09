data modify storage cpp:furnace {} merge from block ~ ~ ~ {}
execute if block ~ ~ ~ furnace[facing=east] run setblock ~ ~ ~ furnace[lit=true,facing=east]
execute if block ~ ~ ~ furnace[facing=west] run setblock ~ ~ ~ furnace[lit=true,facing=west]
execute if block ~ ~ ~ furnace[facing=south] run setblock ~ ~ ~ furnace[lit=true,facing=south]
execute if block ~ ~ ~ furnace[facing=north] run setblock ~ ~ ~ furnace[lit=true,facing=north]
data modify block ~ ~ ~ {} merge from storage cpp:furnace {}
