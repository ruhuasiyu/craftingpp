scoreboard players set #temp cppValue 16
scoreboard players operation #temp cppValue *= @s cppTick
scoreboard players operation #temp cppValue /= #all_in_one_machine_cd cppValue

execute if score #temp cppValue matches 0 run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971020}
execute if score #temp cppValue matches 1..2 run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971021}
execute if score #temp cppValue matches 3..4 run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971022}
execute if score #temp cppValue matches 5..6 run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971023}
execute if score #temp cppValue matches 7..8 run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971024}
execute if score #temp cppValue matches 9..10 run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971025}
execute if score #temp cppValue matches 11..12 run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971026}
execute if score #temp cppValue matches 13..14 run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971027}
execute if score #temp cppValue matches 15..16 run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},id:"cpp:process_shower",CustomModelData:12971028}
