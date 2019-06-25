tellraw @s {"translate":"info.cpp.magic.spirit"}
scoreboard players remove @s cppMana 10
execute as @s[scores={cppWandLevel=1}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_bullet","cpp_magic_spirit1"]}
execute as @s[scores={cppWandLevel=2}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_bullet","cpp_magic_spirit2"]}
execute as @s[scores={cppWandLevel=3}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_bullet","cpp_magic_spirit3"]}
data modify entity @e[type=armor_stand,tag=cpp_bullet,sort=nearest,limit=1] Rotation set from entity @s Rotation
