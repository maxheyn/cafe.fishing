# Reset player scale to normal (level 5 = 1.0x)
say resetify
scoreboard players set @s soda_scale 5
attribute @s minecraft:scale base set 1.0
tellraw @s {"text":"Your size has been reset to normal.","color":"blue"}

advancement revoke @s only global:wf_soda/drink_reset_soda