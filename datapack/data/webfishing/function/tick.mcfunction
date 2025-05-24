# Villager conversion
execute as @e[type=minecraft:villager,tag=!global.ignore] at @s if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{wf_conv_salt:true}}}},distance=..0.5] run function webfishing:setup_saltwater_vendor
execute as @e[type=minecraft:villager,tag=!global.ignore] at @s if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{wf_conv_fresh:true}}}},distance=..0.5] run function webfishing:setup_freshwater_vendor
execute as @e[type=minecraft:villager,tag=!global.ignore] at @s if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{wf_conv_rod:true}}}},distance=..0.5] run function webfishing:setup_rod_vendor

# Shiny particles
execute as @a at @s if data entity @s SelectedItem.components.minecraft:custom_data.wf_shiny run particle minecraft:electric_spark ~ ~ ~ 0.3 1 0.3 0.01 2 normal

# Scale check
execute as @a unless score @s soda_scale matches -2147483648..2147483647 run function webfishing:sodas/init_scale