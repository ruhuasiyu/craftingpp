data modify storage cpp:blast_furnace {} merge from block ~ ~ ~ {}
execute if block ~ ~ ~ blast_furnace[facing=east] run setblock ~ ~ ~ blast_furnace[lit=true,facing=east]
execute if block ~ ~ ~ blast_furnace[facing=west] run setblock ~ ~ ~ blast_furnace[lit=true,facing=west]
execute if block ~ ~ ~ blast_furnace[facing=south] run setblock ~ ~ ~ blast_furnace[lit=true,facing=south]
execute if block ~ ~ ~ blast_furnace[facing=north] run setblock ~ ~ ~ blast_furnace[lit=true,facing=north]
data modify block ~ ~ ~ {} merge from storage cpp:blast_furnace {}
