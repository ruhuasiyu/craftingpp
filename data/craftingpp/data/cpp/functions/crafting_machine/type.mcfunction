execute as @s[scores={cppValue=9}] run function cpp:crafting_machine/recipes/items9
execute as @s[scores={cppValue=8}] run function cpp:crafting_machine/recipes/items8
execute as @s[scores={cppValue=7}] run function cpp:crafting_machine/recipes/items7
execute as @s[scores={cppValue=6}] run function cpp:crafting_machine/recipes/items6
execute as @s[scores={cppValue=5}] run function cpp:crafting_machine/recipes/items5
execute as @s[scores={cppValue=4}] run function cpp:crafting_machine/recipes/items4
execute as @s[scores={cppValue=3}] run function cpp:crafting_machine/recipes/items3
execute as @s[scores={cppValue=2}] run function cpp:crafting_machine/recipes/items2
execute as @s[scores={cppValue=1}] run function cpp:crafting_machine/recipes/items1
function #cpp:crafting_machine
execute unless data block ~ ~ ~ Items[{Slot:16b,tag:{cpp_clear:1b}}] run function cpp:crafting_machine/clear/input
