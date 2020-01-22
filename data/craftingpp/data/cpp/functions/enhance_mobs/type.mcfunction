execute as @s[type=#cpp:zombies] if score $doZombieImproving cppConfig matches 1 run function cpp:enhance_mobs/zombies
execute as @s[type=#cpp:skeletons] if score $doSkeletonImproving cppConfig matches 1 run function cpp:enhance_mobs/skeletons
execute as @s[type=wither_skeleton] if score $doWitherSkeletonImproving cppConfig matches 1 run function cpp:enhance_mobs/wither_skeleton
execute as @s[type=creeper] if score $doCreeperImproving cppConfig matches 1 run function cpp:enhance_mobs/creeper
