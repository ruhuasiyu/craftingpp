# 搬箱器
execute if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:stick"},{Slot:3b,id:"minecraft:stick"},{Slot:10b,id:"minecraft:stick"},{Slot:12b,id:"minecraft:stick"},{Slot:11b,tag:{id:"cpp:enchanted_iron"}},{Slot:20b,tag:{id:"cpp:enchanted_iron"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:chest_transporter
