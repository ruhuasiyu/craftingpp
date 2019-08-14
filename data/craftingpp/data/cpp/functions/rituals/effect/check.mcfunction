tag @s remove cpp_has_enough_xp
execute store result score @s cppValue run xp query @s points
execute store result score @s cppLevel run data get entity @s XpLevel
tag @s[scores={cppValue=1..}] add cpp_has_enough_xp
tag @s[scores={cppLevel=1..}] add cpp_has_enough_xp

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"speed"}]}}]}] run function cpp:rituals/effect/speed

execute as @s[tag=cpp_has_enough_xp,nbt={SelectedItem:{tag:{triggerEffect:[{id:"haste"}]}}}] run function cpp:rituals/effect/haste

execute as @s[tag=cpp_has_enough_xp,nbt={SelectedItem:{tag:{triggerEffect:[{id:"strength"}]}}}] run function cpp:rituals/effect/strength

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"jump_boost"}]}}]}] run function cpp:rituals/effect/jump_boost

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"regeneration"}]}}]}] run function cpp:rituals/effect/regeneration
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:101b,tag:{triggerEffect:[{id:"regeneration"}]}}]}] run function cpp:rituals/effect/regeneration
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:102b,tag:{triggerEffect:[{id:"regeneration"}]}}]}] run function cpp:rituals/effect/regeneration
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"regeneration"}]}}]}] run function cpp:rituals/effect/regeneration

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"resistance"}]}}]}] run function cpp:rituals/effect/resistance
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:101b,tag:{triggerEffect:[{id:"resistance"}]}}]}] run function cpp:rituals/effect/resistance
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:102b,tag:{triggerEffect:[{id:"resistance"}]}}]}] run function cpp:rituals/effect/resistance
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"resistance"}]}}]}] run function cpp:rituals/effect/resistance

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"fire_resistance"}]}}]}] run function cpp:rituals/effect/fire_resistance
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:101b,tag:{triggerEffect:[{id:"fire_resistance"}]}}]}] run function cpp:rituals/effect/fire_resistance
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:102b,tag:{triggerEffect:[{id:"fire_resistance"}]}}]}] run function cpp:rituals/effect/fire_resistance
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"fire_resistance"}]}}]}] run function cpp:rituals/effect/fire_resistance

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"water_breathing"}]}}]}] run function cpp:rituals/effect/water_breathing

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"invisibility"}]}}]}] run function cpp:rituals/effect/invisibility
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:101b,tag:{triggerEffect:[{id:"invisibility"}]}}]}] run function cpp:rituals/effect/invisibility
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:102b,tag:{triggerEffect:[{id:"invisibility"}]}}]}] run function cpp:rituals/effect/invisibility
execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"invisibility"}]}}]}] run function cpp:rituals/effect/invisibility

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"night_vision"}]}}]}] run function cpp:rituals/effect/night_vision

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"saturation"}]}}]}] run function cpp:rituals/effect/saturation

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"slow_falling"}]}}]}] run function cpp:rituals/effect/slow_falling

execute as @s[tag=cpp_has_enough_xp,nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"conduit_power"}]}}]}] run function cpp:rituals/effect/conduit_power

execute as @s[nbt={SelectedItem:{tag:{triggerEffect:[{id:"chain"}]}}}] unless entity @s[scores={cppChainTick=80..}] run scoreboard players set @s cppChainTick 80
