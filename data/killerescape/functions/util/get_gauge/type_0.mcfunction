
##ゲージタイプがメモリの場合の処理を行います

#スケーリング
scoreboard players operation now var = value var
scoreboard players operation now var *= length var
scoreboard players operation now var /= max var

#記録タグ作成
data modify storage minecraft:temp tag set from storage minecraft:killerescape arguments
data remove storage minecraft:temp tag.max
execute store result storage minecraft:temp tag.value int 1 run scoreboard players get now var

#引数データ削除(他の関数の呼び出しがあるため)
data remove storage minecraft:killerescape arguments

#キャッシュ検索(もし過去データがあれば引っ張ってくる)
data modify storage minecraft:temp temp set from storage minecraft:killerescape cache.gauge
data remove storage minecraft:temp temp2
function killerescape:util/get_gauge/_

#もし検索結果があればそのまま返却
execute if data storage minecraft:temp temp2 run data modify storage minecraft:killerescape result set from storage minecraft:temp temp2

#なければ生成
execute unless data storage minecraft:temp temp2 run function killerescape:util/get_gauge/__

#キャッシュ削除
data remove storage minecraft:temp temp
data remove storage minecraft:temp temp2
