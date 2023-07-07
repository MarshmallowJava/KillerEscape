
##実行者の座標から実行位置までの経路中にブロックがあるかどうか判定します

execute as @a[limit=1,sort=nearest] run function killerescape:util/owner

summon minecraft:marker ~ ~ ~ {Tags:["destination"]}

scoreboard players set result var 0
execute at @s anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[tag=destination] feet as @e[tag=destination] run function killerescape:game/killer/_ice/trace/_

kill @e[type=minecraft:marker,tag=destination]

execute if score result var matches 1 run tag @a[tag=watched_by_ice,limit=1,sort=nearest] remove watched_by_ice
