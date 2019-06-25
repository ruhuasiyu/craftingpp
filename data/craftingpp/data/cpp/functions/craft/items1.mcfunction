execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:charcoal"}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/coal_nugget
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:coal"}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/coal_nugget
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:moon_stone"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/moon_shard
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:sun_stone"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/sun_shard

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:lycoris_radiata"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/lycoris_radiata
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:trifolium"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/trifolium

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:blackthorn"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/blackthorn
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:cattail"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/cattail
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:marigold"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/marigold
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:hibiscus"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/hibiscus
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:hyacinth"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/hyacinth
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:calamus"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/calamus
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:wild_lilium"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/wild_lilium
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:bauhinia"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/bauhinia
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:fluffy_grass"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/fluffy_grass
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:gerbera"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/gerbera
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:esparto"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/esparto
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:glow_forsythia"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/glow_forsythia
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:glazed_shade"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/glazed_shade
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:stelera"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/stelera
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:forage_crystal"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/forage_crystal
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:isorchid"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/isorchid
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:burning_chrysanthe"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/burning_chrysanthe
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:oxalis"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/oxalis

execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:firework_star",tag:{id:"cpp:red_lip"}}]} run data modify block ~ ~ ~ Items[{tag:{id:"cpp:red_lip"}}].Slot set value 16b
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:firework_star",tag:{id:"cpp:red_lip"}}]} run data modify block ~ ~ ~ Items[{tag:{id:"cpp:red_lip"}}].id set value "minecraft:leather_helmet"
