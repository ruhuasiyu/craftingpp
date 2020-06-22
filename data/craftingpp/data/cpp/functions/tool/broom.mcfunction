tellraw @s[nbt=!{ActiveEffects:[{Id:25b}]}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"text":"Tia Fraere!"}]}
effect give @s levitation 2 0 true

execute at @s[name=ruhuasiyu] run particle item firework_star{CustomModelData:12979001} ~ ~1 ~ 1 1 1 0 3
execute at @s[name=rubbertree] run particle item firework_star{CustomModelData:12979002} ~ ~1 ~ 1 1 1 0 3
execute at @s[name=Xe_Kr] run particle item firework_star{CustomModelData:12979003} ~ ~1 ~ 1 1 1 0 3
execute at @s[name=zqk_china] run particle item firework_star{CustomModelData:12979004} ~ ~1 ~ 1 1 1 0 3
advancement grant @s only cpp:broom
