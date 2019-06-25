scoreboard players set #temp cppValue 0
execute store result score #temp cppValue run data get entity @s SelectedItem.tag.Type

execute if score #temp cppValue matches 0 run replaceitem entity @s weapon.mainhand carrot_on_a_stick{CustomModelData:12970041,Unbreakable:1b,HideFlags:63,display:{Name:"{\"translate\":\"item.cpp.magnet.area\"}"},id:"cpp:magnet",Type:1b}
execute if score #temp cppValue matches 1 run replaceitem entity @s weapon.mainhand carrot_on_a_stick{CustomModelData:12970041,Unbreakable:1b,HideFlags:63,display:{Name:"{\"translate\":\"item.cpp.magnet.closed\"}"},id:"cpp:magnet",Type:-1b}
execute if score #temp cppValue matches -1 run replaceitem entity @s weapon.mainhand carrot_on_a_stick{CustomModelData:12970041,Unbreakable:1b,HideFlags:63,display:{Name:"{\"translate\":\"item.cpp.magnet\"}"},id:"cpp:magnet",Type:0b}

