execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:6b}].Count
execute store result block ~ ~ ~ Items[{Slot:6b}].Count byte 1 run scoreboard players remove #temp cppValue 1
scoreboard players add @s cppStoredxp 9
function cpp:all_in_one_machine/option/xp