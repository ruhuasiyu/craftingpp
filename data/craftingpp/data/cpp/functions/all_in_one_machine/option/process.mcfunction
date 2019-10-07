scoreboard players set #temp cppValue 16
scoreboard players operation #temp cppValue *= @s cppTick
scoreboard players operation #temp cppValue /= #all_in_one_machine_cd cppValue

replaceitem block ~ ~ ~ container.12 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971020}
execute store result block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData int 1 run scoreboard players add #temp cppValue 12971020
