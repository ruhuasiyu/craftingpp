scoreboard players set #t cppValue 16
scoreboard players operation #t cppValue *= @s cppTick
scoreboard players operation #t cppValue += #process_pre cppValue
scoreboard players operation #t cppValue /= $allInOneMachinePeriod cppConfig
execute store result block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData int 1 run scoreboard players add #t cppValue 12971080
