advancement grant @s only cpp:elements
advancement grant @s only cpp:weather
setblock ~ 255 ~ chest
loot insert ~ 255 ~ loot cpp:misc/weather
data modify storage cpp:blue_force Item set from block ~ 255 ~ Items[0]
setblock ~ 255 ~ air

execute if data storage cpp:blue_force Item.tag{cppWeatherMarkerId:"thunder"} run weather clear
execute if data storage cpp:blue_force Item.tag{cppWeatherMarkerId:"clear"} run weather rain
execute if data storage cpp:blue_force Item.tag{cppWeatherMarkerId:"rain"} run weather thunder

execute if data storage cpp:blue_force Item.tag{cppWeatherMarkerId:"thunder"} run tellraw @a [{"translate":"item.cpp.blue_force_of_sky.info"},{"selector":"@s"},{"translate":"item.cpp.blue_force_of_sky.clear"}]
execute if data storage cpp:blue_force Item.tag{cppWeatherMarkerId:"clear"} run tellraw @a [{"translate":"item.cpp.blue_force_of_sky.info"},{"selector":"@s"},{"translate":"item.cpp.blue_force_of_sky.rain"}]
execute if data storage cpp:blue_force Item.tag{cppWeatherMarkerId:"rain"} run tellraw @a [{"translate":"item.cpp.blue_force_of_sky.info"},{"selector":"@s"},{"translate":"item.cpp.blue_force_of_sky.thunder"}]
