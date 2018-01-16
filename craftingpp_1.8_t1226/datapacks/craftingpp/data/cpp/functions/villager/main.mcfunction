#=============================================
#	Spring Surprise by ruhuasiyu
#	An addon of Crafting++ v1.8
#	fits Minecraft Java 1.13
#=============================================

##tag prefix
#cpp_aec_*

##scoreboard list
#cppRandom		记录随机数

#####################所有合成#####################
execute as @e[type=villager,tag=!cpp_checked,nbt={Profession:2}] at @s run function cpp:villager/santa
execute as @e[type=villager,tag=!cpp_checked,nbt={Profession:5}] at @s run function cpp:villager/silly
