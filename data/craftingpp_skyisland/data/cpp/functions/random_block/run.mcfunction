setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,Count:1b,id:"minecraft:firework_star"}]}
scoreboard players set #random_min cppRandom 1
execute store result score #random_max cppRandom run data get entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items
function cpp:random_block/random
execute as @s[scores={cppRandom=1}] run function cpp:random_block/slot/slot00
execute as @s[scores={cppRandom=2}] run function cpp:random_block/slot/slot01
execute as @s[scores={cppRandom=3}] run function cpp:random_block/slot/slot02
execute as @s[scores={cppRandom=4}] run function cpp:random_block/slot/slot03
execute as @s[scores={cppRandom=5}] run function cpp:random_block/slot/slot04
execute as @s[scores={cppRandom=6}] run function cpp:random_block/slot/slot05
execute as @s[scores={cppRandom=7}] run function cpp:random_block/slot/slot06
execute as @s[scores={cppRandom=8}] run function cpp:random_block/slot/slot07
execute as @s[scores={cppRandom=9}] run function cpp:random_block/slot/slot08
execute as @s[scores={cppRandom=10}] run function cpp:random_block/slot/slot09
execute as @s[scores={cppRandom=11}] run function cpp:random_block/slot/slot10
execute as @s[scores={cppRandom=12}] run function cpp:random_block/slot/slot11
execute as @s[scores={cppRandom=13}] run function cpp:random_block/slot/slot12
execute as @s[scores={cppRandom=14}] run function cpp:random_block/slot/slot13
execute as @s[scores={cppRandom=15}] run function cpp:random_block/slot/slot14
execute as @s[scores={cppRandom=16}] run function cpp:random_block/slot/slot15
execute as @s[scores={cppRandom=17}] run function cpp:random_block/slot/slot16
execute as @s[scores={cppRandom=18}] run function cpp:random_block/slot/slot17
execute as @s[scores={cppRandom=19}] run function cpp:random_block/slot/slot18
execute as @s[scores={cppRandom=20}] run function cpp:random_block/slot/slot19
execute as @s[scores={cppRandom=21}] run function cpp:random_block/slot/slot20
execute as @s[scores={cppRandom=22}] run function cpp:random_block/slot/slot21
execute as @s[scores={cppRandom=23}] run function cpp:random_block/slot/slot22
execute as @s[scores={cppRandom=24}] run function cpp:random_block/slot/slot23
execute as @s[scores={cppRandom=25}] run function cpp:random_block/slot/slot24
execute as @s[scores={cppRandom=26}] run function cpp:random_block/slot/slot25
execute as @s[scores={cppRandom=27}] run function cpp:random_block/slot/slot26
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
data remove entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[{Count:0b}]
setblock ~ 255 ~ air
