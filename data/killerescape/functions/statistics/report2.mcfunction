
##生存者の結果を保存します

#自分のページを検索
function killerescape:statistics/search/

#データを保存
execute store result storage temp: _.repair int 1 run scoreboard players get @s data_repair
execute store result storage temp: _.rescue int 1 run scoreboard players get @s data_rescue
execute store result storage temp: _.chase int 1 run scoreboard players get @s data_chase

#ページを書き込み
data modify storage minecraft:killerescape statistics.cache.survivors append from storage temp: _
