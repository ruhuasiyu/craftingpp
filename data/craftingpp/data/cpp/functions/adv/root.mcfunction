scoreboard players add #players_number cppID 1
scoreboard players operation @s cppID = #players_number cppID
scoreboard players add @s cppMana 0
execute if score #skyislandMode cppValue matches 1 run function cpp:adv/root_skyisland
