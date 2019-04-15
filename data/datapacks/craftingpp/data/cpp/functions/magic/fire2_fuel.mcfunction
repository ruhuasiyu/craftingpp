execute if block ~ ~ ~ furnace[facing=east] run setblock ~ 255 ~ furnace[lit=true,facing=east]
execute if block ~ ~ ~ furnace[facing=south] run setblock ~ 255 ~ furnace[lit=true,facing=south]
execute if block ~ ~ ~ furnace[facing=west] run setblock ~ 255 ~ furnace[lit=true,facing=west]
execute if block ~ ~ ~ furnace[facing=north] run setblock ~ 255 ~ furnace[lit=true,facing=north]
data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
data modify block ~ 255 ~ CookTime set from block ~ ~ ~ CookTime
data modify block ~ 255 ~ CookTimeTotal set from block ~ ~ ~ CookTimeTotal
execute as @s[scores={cppWandLevel=1..}] run data merge block ~ 255 ~ {BurnTime:6400s}
execute as @s[scores={cppWandLevel=2..}] run data merge block ~ 255 ~ {BurnTime:12800s}
execute as @s[scores={cppWandLevel=3..}] run data merge block ~ 255 ~ {BurnTime:19200s}
setblock ~ ~ ~ air
clone ~ 255 ~ ~ 255 ~ ~ ~ ~ replace move