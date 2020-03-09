data modify storage cpp:furnace {} merge from block ~ ~ ~ {}
execute if block ~ ~ ~ furnace[facing=east] run setblock ~ 255 ~ furnace[lit=false,facing=east]
execute if block ~ ~ ~ furnace[facing=west] run setblock ~ 255 ~ furnace[lit=false,facing=west]
execute if block ~ ~ ~ furnace[facing=south] run setblock ~ 255 ~ furnace[lit=false,facing=south]
execute if block ~ ~ ~ furnace[facing=north] run setblock ~ 255 ~ furnace[lit=false,facing=north]
data modify block ~ ~ ~ {} merge from storage cpp:furnace {}
