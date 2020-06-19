scoreboard players add #players_number cppID 1
scoreboard players operation @s cppID = #players_number cppID
execute if score $skyislandMode cppConfig matches 1 run function cpp:adv/root_skyisland
team join cppTitle999 @s[name=ruhuasiyu]
