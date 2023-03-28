
##這いずりに関する処理を行います

kill @e[type=minecraft:shulker,tag=pressure_shulker,tag=!still_alive]
kill @e[type=minecraft:armor_stand,tag=pressure,tag=!still_alive]
tag @e remove still_alive

execute as @a[tag=lying,gamemode=!spectator] at @s run function killerescape:game/lying/tick

tp @e[type=minecraft:shulker,tag=pressure_shulker,tag=!still_alive] ~ ~-1000 ~ 
tp @e[type=minecraft:armor_stand,tag=pressure,tag=!still_alive] ~ ~-1000 ~

effect give @a[tag=lying] minecraft:glowing 1 0 true
