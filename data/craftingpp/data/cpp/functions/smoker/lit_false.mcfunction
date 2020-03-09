data modify storage cpp:smoker {} merge from block ~ ~ ~ {}
execute if block ~ ~ ~ smoker[facing=east] run setblock ~ 255 ~ smoker[lit=false,facing=east]
execute if block ~ ~ ~ smoker[facing=west] run setblock ~ 255 ~ smoker[lit=false,facing=west]
execute if block ~ ~ ~ smoker[facing=south] run setblock ~ 255 ~ smoker[lit=false,facing=south]
execute if block ~ ~ ~ smoker[facing=north] run setblock ~ 255 ~ smoker[lit=false,facing=north]
data modify block ~ ~ ~ {} merge from storage cpp:smoker {}
