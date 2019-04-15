scoreboard objectives add cppBsdIntFur minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add cppValue dummy

execute unless score #load_block_sky_domain cppValue matches 0..1 if block ~ 0 ~ bedrock run scoreboard players set #load_block_sky_domain cppValue -1
execute unless score #load_block_sky_domain cppValue matches 0..1 unless block ~ 0 ~ bedrock run scoreboard players set #load_block_sky_domain cppValue 2
execute if score #load_block_sky_domain cppValue matches -1..0 run datapack disable "file/block_sky_domain"
