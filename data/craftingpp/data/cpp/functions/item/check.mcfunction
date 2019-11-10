kill @s[nbt={Item:{tag:{cppMachineBg:1b}}}]
#execute as @s[nbt={Item:{tag:{id:"cpp:mycelium_marker"}}}] at @s run function cpp:item/mycelium
#execute as @s[nbt={Item:{tag:{Tags:["cpp_generate_sheep"]}}}] at @s run function cpp:item/sheep
#execute as @s[tag=!cpp_item_compressed,nbt={Item:{Count:1b}}] if data entity @s Item.tag.compressedLevel run function cpp:item/decompress
#execute as @s[nbt={Item:{tag:{isLeavesFastDecayMarker:1b}}}] at @s run function cpp:item/leaves_check
#execute as @s[nbt={Item:{tag:{isIslandDrop:1b}}}] run function cpp:item/skyisland
tag @s add cpp_item_checked
