advancement revoke @s only cpp:misc/soul_soil
execute if score $skyislandMode cppConfig matches 1 as @s[predicate=cpp:has_coarse_dirt] run function cpp:adv/soul_soil_done
