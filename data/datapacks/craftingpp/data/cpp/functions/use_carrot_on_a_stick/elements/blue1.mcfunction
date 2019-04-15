advancement grant @s only cpp:elements
advancement grant @s only cpp:weather

loot spawn ~ ~100 ~ loot cpp:weather/weather
execute if entity @e[type=item,nbt={Item:{tag:{id:"cpp:weather/thunder"}}}] run weather clear
execute if entity @e[type=item,nbt={Item:{tag:{id:"cpp:weather/clear"}}}] run weather rain
execute if entity @e[type=item,nbt={Item:{tag:{id:"cpp:weather/rain"}}}] run weather thunder

execute if entity @e[type=item,nbt={Item:{tag:{id:"cpp:weather/thunder"}}}] run tellraw @a [{"translate":"item.cpp.blue_force_of_sky.info"},{"selector":"@s"},{"translate":"item.cpp.blue_force_of_sky.clear"}]
execute if entity @e[type=item,nbt={Item:{tag:{id:"cpp:weather/clear"}}}] run tellraw @a [{"translate":"item.cpp.blue_force_of_sky.info"},{"selector":"@s"},{"translate":"item.cpp.blue_force_of_sky.rain"}]
execute if entity @e[type=item,nbt={Item:{tag:{id:"cpp:weather/rain"}}}] run tellraw @a [{"translate":"item.cpp.blue_force_of_sky.info"},{"selector":"@s"},{"translate":"item.cpp.blue_force_of_sky.thunder"}]

kill @e[type=item,nbt={Item:{tag:{isWeatherMarker:1b}}}]
