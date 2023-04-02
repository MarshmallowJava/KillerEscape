
##BAN対象を除きます

#入力
execute store result score data var run data get storage minecraft:temp temp2[0]

#追加
execute if score data var matches 0 run data modify storage minecraft:killerescape pool append from storage minecraft:temp temp[0]

#再帰呼び出し
data remove storage minecraft:temp temp[0]
data remove storage minecraft:temp temp2[0]
execute if data storage minecraft:temp temp[0] run function killerescape:game/ability/role/supply/_
