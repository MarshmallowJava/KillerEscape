scoreboard players set #repaired var_hope 0
scoreboard players set #actived var_hope 0

execute as @a[tag=hope] run attribute @s minecraft:generic.movement_speed modifier remove e14b8246-089f-4b7a-8754-1e47c035989b
tag @a remove hope
