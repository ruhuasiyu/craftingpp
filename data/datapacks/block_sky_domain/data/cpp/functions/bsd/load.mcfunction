scoreboard objectives add cppBsdIntFur minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add cppValue dummy

# 是否开启空岛模式
# -1自动关闭，0手动关闭，1手动开启，2自动开启
execute unless score #load_block_sky_domain cppValue matches 0..1 unless block ~ 0 ~ #cpp:air run scoreboard players set #load_block_sky_domain cppValue -1
execute unless score #load_block_sky_domain cppValue matches 0..1 if block ~ 0 ~ #cpp:air run scoreboard players set #load_block_sky_domain cppValue 2
execute if score #load_block_sky_domain cppValue matches -1..0 run datapack disable "file/block_sky_domain"
