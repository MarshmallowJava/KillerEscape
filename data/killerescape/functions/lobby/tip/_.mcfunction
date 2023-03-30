
##プールからランダムな要素を抽出します

#要素を削除
data remove storage minecraft:temp temp[-1]

#再帰呼び出し
scoreboard players remove result value 1
execute if score result value matches 1.. run function killerescape:lobby/tip/_
