execute store result score @s cppValue run data get block ~ ~ ~ Items
function #cpp:craft
execute as @s[scores={cppValue=26}] run function cpp:craft/items9
execute as @s[scores={cppValue=25}] run function cpp:craft/items8
execute as @s[scores={cppValue=24}] run function cpp:craft/items7
execute as @s[scores={cppValue=23}] run function cpp:craft/items6
execute as @s[scores={cppValue=22}] run function cpp:craft/items5
execute as @s[scores={cppValue=21}] run function cpp:craft/items4
execute as @s[scores={cppValue=20}] run function cpp:craft/items3
execute as @s[scores={cppValue=19}] run function cpp:craft/items2
execute as @s[scores={cppValue=18}] run function cpp:craft/items1

execute if data block ~ ~ ~ Items[{Slot:16b}] run function cpp:craft/clear_all
