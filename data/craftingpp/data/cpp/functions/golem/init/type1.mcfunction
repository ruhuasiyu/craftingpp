summon zombie_pigman ~ ~ ~ {IsBaby:1b,Invulnerable:1b,NoAI:1b,Tags:["cpp_golem","cpp_golem_break"],DeathLootTable:"cpp:golem",PersistenceRequired:1b,ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f],Silent:1b}
execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function cpp:golem/init/off
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function cpp:golem/init/main
