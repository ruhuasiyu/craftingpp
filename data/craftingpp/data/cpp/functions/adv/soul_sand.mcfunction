advancement revoke @s only cpp:misc/soul_sand
execute if score $skyislandMode cppConfig matches 1 as @s[nbt={Inventory:[{id:"minecraft:sand"}]}] run function cpp:adv/soul_sand1
