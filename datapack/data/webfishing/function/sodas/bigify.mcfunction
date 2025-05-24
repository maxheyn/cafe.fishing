# Check if player is already at maximum size (level 10 = 1.5x)]
say bigify
execute if score @s soda_scale matches 10.. run tellraw @s {"text":"The apple has no effect - you've reached maximum size!","color":"yellow"}
execute if score @s soda_scale matches 10.. run return 0

# Increase scale level by 1
scoreboard players add @s soda_scale 1

# Apply the corresponding scale based on level
execute if score @s soda_scale matches 0 run attribute @s minecraft:scale base set 0.75
execute if score @s soda_scale matches 1 run attribute @s minecraft:scale base set 0.8
execute if score @s soda_scale matches 2 run attribute @s minecraft:scale base set 0.85
execute if score @s soda_scale matches 3 run attribute @s minecraft:scale base set 0.9
execute if score @s soda_scale matches 4 run attribute @s minecraft:scale base set 0.95
execute if score @s soda_scale matches 5 run attribute @s minecraft:scale base set 1.0
execute if score @s soda_scale matches 6 run attribute @s minecraft:scale base set 1.05
execute if score @s soda_scale matches 7 run attribute @s minecraft:scale base set 1.1
execute if score @s soda_scale matches 8 run attribute @s minecraft:scale base set 1.15
execute if score @s soda_scale matches 9 run attribute @s minecraft:scale base set 1.2
execute if score @s soda_scale matches 10 run attribute @s minecraft:scale base set 1.25

# Feedback
tellraw @s {"text":"You feel yourself growing larger!","color":"green"}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 0.8

advancement revoke @s only global:wf_soda/drink_big_soda