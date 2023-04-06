
##最付近のポイントを検索します

#距離を算出
execute store result score ry var run data get entity @s Rotation[0]
execute store result score rx var run data get entity @s Rotation[1]
execute anchored eyes positioned ^ ^ ^ anchored feet as @e[tag=vampire_point] run function killerescape:game/killer/vampire/choose/_

#最付近を検索
scoreboard players set min var 2147483647
scoreboard players operation min var < @e[tag=vampire_point] var
execute as @e[tag=vampire_point] if score @s var = min var run tag @s add selecting
tag @e[tag=selecting,limit=1,sort=nearest] add selected
tag @e remove selecting
