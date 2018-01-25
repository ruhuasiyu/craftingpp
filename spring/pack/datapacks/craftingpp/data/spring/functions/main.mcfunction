#=============================================
#	Spring Surprise by ruhuasiyu
#	An addon of Crafting++ v1.8
#	fits Minecraft Java 1.13
#
#	check the tag, scb, teams list to avoid
#	conflict before you add more datapacks
#=============================================

##tag prefix
#cpp_aec_*

##scoreboard list (14)
#cppRandom		记录随机数

#####################所有合成#####################
scoreboard objectives add cppRandom dummy

execute as @e[type=villager,tag=!cpp_checked,nbt={Profession:2}] at @s run function spring:santa
execute as @e[type=villager,tag=!cpp_checked,nbt={Profession:5}] at @s run function spring:silly
