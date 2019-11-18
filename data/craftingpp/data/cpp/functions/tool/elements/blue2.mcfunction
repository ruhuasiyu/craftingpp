loot spawn ~ ~ ~ loot cpp:misc/weather
execute if entity @e[type=item,nbt={Item:{tag:{cppWeatherMarkerId:"thunder"}}},distance=..1,limit=1] run weather clear
execute if entity @e[type=item,nbt={Item:{tag:{cppWeatherMarkerId:"clear"}}},distance=..1,limit=1] run weather rain
execute if entity @e[type=item,nbt={Item:{tag:{cppWeatherMarkerId:"rain"}}},distance=..1,limit=1] run weather thunder

execute if entity @e[type=item,nbt={Item:{tag:{cppWeatherMarkerId:"thunder"}}},distance=..1,limit=1] run tellraw @a [{"translate":"item.cpp.blue_force_of_sky.info"},{"selector":"@s"},{"translate":"item.cpp.blue_force_of_sky.clear"}]
execute if entity @e[type=item,nbt={Item:{tag:{cppWeatherMarkerId:"clear"}}},distance=..1,limit=1] run tellraw @a [{"translate":"item.cpp.blue_force_of_sky.info"},{"selector":"@s"},{"translate":"item.cpp.blue_force_of_sky.rain"}]
execute if entity @e[type=item,nbt={Item:{tag:{cppWeatherMarkerId:"rain"}}},distance=..1,limit=1] run tellraw @a [{"translate":"item.cpp.blue_force_of_sky.info"},{"selector":"@s"},{"translate":"item.cpp.blue_force_of_sky.thunder"}]

kill @e[type=item,nbt={Item:{tag:{cppWeatherMarker:1b}}},distance=..1,limit=1]
