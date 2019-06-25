execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,tag:{id:"cpp:wing_of_sky"}}]} run function cpp:brewing_stand/sky
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,tag:{id:"cpp:heart_of_crystal"}}]} run function cpp:brewing_stand/ocean
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,tag:{id:"cpp:nova_of_fire"}}]} run function cpp:brewing_stand/fire
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,tag:{id:"cpp:soul_of_dirt"}}]} run function cpp:brewing_stand/dirt
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,tag:{id:"cpp:certification_of_earth"}}]} run function cpp:brewing_stand/earth
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,tag:{id:"cpp:limb_of_ridge"}}]} run function cpp:brewing_stand/ridge
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,tag:{id:"cpp:spirit_of_life"}}]} run function cpp:brewing_stand/life

execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,id:"minecraft:redstone"},{tag:{potionType:["normal"]}}]} run function cpp:brewing_stand/long
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,id:"minecraft:glowstone_dust"},{tag:{potionType:["normal"]}}]} run function cpp:brewing_stand/strong

execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,id:"minecraft:gunpowder"},{id:"minecraft:potion"}]} run function cpp:brewing_stand/splash
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:3b,id:"minecraft:dragon_breath"},{id:"minecraft:splash_potion"}]} run function cpp:brewing_stand/lingering
