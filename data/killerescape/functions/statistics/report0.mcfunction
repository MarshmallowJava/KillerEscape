
##生存者の能力を保存します

#キャッシュ初期化
data remove storage temp: _

#データ格納
execute store result storage temp: _.Id int 1 run scoreboard players get @s entity_id
execute if data storage minecraft:temp result run data modify storage temp: _.ability set from storage minecraft:temp result.tag.display.Name
execute unless data storage minecraft:temp result run data modify storage temp: _.ability set value '{"text":"なし","italic":false,"color":"red"}'

#データを登録
data modify storage minecraft:killerescape statistics.cache.survivors append from storage temp: _
