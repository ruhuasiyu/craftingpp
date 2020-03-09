execute store result score #change cppValue run data modify entity @s HandItems[0].tag.id set from block ~ ~ ~ Items[{Slot:1b}].id
execute if score #change cppValue matches 1 run function cpp:smoker/fuel_change
