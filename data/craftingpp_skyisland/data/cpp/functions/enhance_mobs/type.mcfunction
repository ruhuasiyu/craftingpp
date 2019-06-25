execute as @s[type=#cpp:zombies] if score #improve_zombie cppValue matches 1 run function cpp:enhance_mobs/zombies
execute as @s[type=#cpp:skeletons] if score #improve_skeleton cppValue matches 1 run function cpp:enhance_mobs/skeletons
execute as @s[type=wither_skeleton] if score #improve_skeleton cppValue matches 1 run function cpp:enhance_mobs/wither_skeleton
execute as @s[type=creeper] if score #improve_creeper cppValue matches 1 run function cpp:enhance_mobs/creeper
