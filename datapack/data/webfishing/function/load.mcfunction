scoreboard objectives add soda_scale dummy "Current Soda Scale"

execute as @a unless score @s soda_scale matches -2147483648..2147483647 run scoreboard players set @s soda_scale 5