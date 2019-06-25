execute store result score @s cppXpTotal run data get entity @s XpTotal

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"speed"}]}}]}] run function cpp:rituals/effect/speed

execute as @s[scores={cppXpTotal=1..},nbt={SelectedItem:{tag:{triggerEffect:[{id:"haste"}]}}}] run function cpp:rituals/effect/haste

execute as @s[scores={cppXpTotal=1..},nbt={SelectedItem:{tag:{triggerEffect:[{id:"strength"}]}}}] run function cpp:rituals/effect/strength

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"jump_boost"}]}}]}] run function cpp:rituals/effect/jump_boost

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"regeneration"}]}}]}] run function cpp:rituals/effect/regeneration
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:101b,tag:{triggerEffect:[{id:"regeneration"}]}}]}] run function cpp:rituals/effect/regeneration
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:102b,tag:{triggerEffect:[{id:"regeneration"}]}}]}] run function cpp:rituals/effect/regeneration
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"regeneration"}]}}]}] run function cpp:rituals/effect/regeneration

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"resistance"}]}}]}] run function cpp:rituals/effect/resistance
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:101b,tag:{triggerEffect:[{id:"resistance"}]}}]}] run function cpp:rituals/effect/resistance
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:102b,tag:{triggerEffect:[{id:"resistance"}]}}]}] run function cpp:rituals/effect/resistance
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"resistance"}]}}]}] run function cpp:rituals/effect/resistance

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"fire_resistance"}]}}]}] run function cpp:rituals/effect/fire_resistance
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:101b,tag:{triggerEffect:[{id:"fire_resistance"}]}}]}] run function cpp:rituals/effect/fire_resistance
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:102b,tag:{triggerEffect:[{id:"fire_resistance"}]}}]}] run function cpp:rituals/effect/fire_resistance
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"fire_resistance"}]}}]}] run function cpp:rituals/effect/fire_resistance

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"water_breathing"}]}}]}] run function cpp:rituals/effect/water_breathing

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"invisibility"}]}}]}] run function cpp:rituals/effect/invisibility
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:101b,tag:{triggerEffect:[{id:"invisibility"}]}}]}] run function cpp:rituals/effect/invisibility
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:102b,tag:{triggerEffect:[{id:"invisibility"}]}}]}] run function cpp:rituals/effect/invisibility
execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"invisibility"}]}}]}] run function cpp:rituals/effect/invisibility

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"night_vision"}]}}]}] run function cpp:rituals/effect/night_vision

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"saturation"}]}}]}] run function cpp:rituals/effect/saturation

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:100b,tag:{triggerEffect:[{id:"slow_falling"}]}}]}] run function cpp:rituals/effect/slow_falling

execute as @s[scores={cppXpTotal=1..},nbt={Inventory:[{Slot:103b,tag:{triggerEffect:[{id:"conduit_power"}]}}]}] run function cpp:rituals/effect/conduit_power

execute as @s[nbt={SelectedItem:{tag:{triggerEffect:[{id:"chain"}]}}}] unless entity @s[scores={cppChainTick=80..}] run scoreboard players set @s cppChainTick 80
