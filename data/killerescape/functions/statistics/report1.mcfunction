
##鬼の能力を保存します

#キャッシュ初期化
data remove storage temp: _

#データ格納
execute store result storage temp: _.Id int 1 run scoreboard players get @s entity_id
data modify storage temp: _.ability set from storage minecraft:temp temp[-1].Name

#データを登録
data modify storage minecraft:killerescape statistics.cache.killer set from storage temp: _
