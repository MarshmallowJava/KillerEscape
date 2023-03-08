
##マップ制作に関する処理を行います

#ロビー設定
execute as @e[type=minecraft:armor_stand,tag=lobby] at @s run function killerescape:map/place/lobby

#新規に設置された固有エンティティにIDを割り振る
execute as @e[tag=map_unique_entity] unless score @s mapid matches -2147483648..2147483647 run scoreboard players operation @s mapid = editing mapid

#置き換え
execute as @e[type=minecraft:armor_stand,tag=spawn_survivor] at @s run function killerescape:map/place/spawn_survivor
execute as @e[type=minecraft:armor_stand,tag=spawn_killer] at @s run function killerescape:map/place/spawn_killer
execute as @e[type=minecraft:armor_stand,tag=chest] at @s run function killerescape:map/place/chest
execute as @e[type=minecraft:armor_stand,tag=hook] at @s run function killerescape:map/place/hook
execute as @e[type=minecraft:armor_stand,tag=gate] at @s run function killerescape:map/place/gate

#削除
execute as @e[type=minecraft:armor_stand,tag=remove] at @s run function killerescape:map/remove
