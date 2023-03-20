tellraw @a[tag=hope] ["",{"text": "[希望]","color": "yellow"},{"text": " 移動速度が上昇","color": "yellow"}]
execute as @a[tag=hope] at @s run playsound block.beacon.activate master @s ~ ~ ~ 1.0 1.6 0
execute as @a[tag=hope] run attribute @s minecraft:generic.movement_speed modifier add e14b8246-089f-4b7a-8754-1e47c035989b "hope" 2.0 multiply
scoreboard players set #actived var_hope 1
