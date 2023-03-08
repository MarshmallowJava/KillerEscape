
##一定範囲内の最付近のマップユニークを削除します

execute at @e[tag=map_unique_entity,distance=..2,limit=1,sort=nearest] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a

kill @e[tag=map_unique_entity,distance=..2,limit=1,sort=nearest]
kill @s[type=minecraft:armor_stand]
