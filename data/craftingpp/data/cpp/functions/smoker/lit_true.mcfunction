data modify storage cpp:smoker {} merge from block ~ ~ ~ {}
execute if block ~ ~ ~ smoker[facing=east] run setblock ~ ~ ~ smoker[lit=true,facing=east]
execute if block ~ ~ ~ smoker[facing=west] run setblock ~ ~ ~ smoker[lit=true,facing=west]
execute if block ~ ~ ~ smoker[facing=south] run setblock ~ ~ ~ smoker[lit=true,facing=south]
execute if block ~ ~ ~ smoker[facing=north] run setblock ~ ~ ~ smoker[lit=true,facing=north]
data modify block ~ ~ ~ {} merge from storage cpp:smoker {}
