execute store result score @s cppThisKey run data get entity @s SelectedItemSlot
execute unless score @s cppThisKey = @s cppLastKey run function cpp:magic/key_calc
tag @s add cpp_has_wand_off
