data modify storage cpp:blast_furnace {} merge from block ~ ~ ~ {}
execute if block ~ ~ ~ blast_furnace[facing=east] run setblock ~ 255 ~ blast_furnace[lit=false,facing=east]
execute if block ~ ~ ~ blast_furnace[facing=west] run setblock ~ 255 ~ blast_furnace[lit=false,facing=west]
execute if block ~ ~ ~ blast_furnace[facing=south] run setblock ~ 255 ~ blast_furnace[lit=false,facing=south]
execute if block ~ ~ ~ blast_furnace[facing=north] run setblock ~ 255 ~ blast_furnace[lit=false,facing=north]
data modify block ~ ~ ~ {} merge from storage cpp:blast_furnace {}
