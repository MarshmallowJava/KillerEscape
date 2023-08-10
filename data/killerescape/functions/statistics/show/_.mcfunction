
#削除
data remove storage minecraft:temp temp[-1]

#再帰呼び出し
scoreboard players remove @s var 1
execute if score @s var matches 1.. run function killerescape:statistics/show/_
