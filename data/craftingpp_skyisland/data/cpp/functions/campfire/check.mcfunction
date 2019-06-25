execute store result score #temp cppValue run data get block ~ ~ ~ CookingTimes[0]
execute if score #temp cppValue matches 599 run function cpp:campfire/type0
execute store result score #temp cppValue run data get block ~ ~ ~ CookingTimes[1]
execute if score #temp cppValue matches 599 run function cpp:campfire/type1
execute store result score #temp cppValue run data get block ~ ~ ~ CookingTimes[2]
execute if score #temp cppValue matches 599 run function cpp:campfire/type2
execute store result score #temp cppValue run data get block ~ ~ ~ CookingTimes[3]
execute if score #temp cppValue matches 599 run function cpp:campfire/type3
