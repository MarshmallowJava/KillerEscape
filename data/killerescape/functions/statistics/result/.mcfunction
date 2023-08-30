
##ゲームリザルト用の表示を行います

#データをコピー
data modify storage minecraft:temp temp set from storage minecraft:killerescape statistics.cache.survivors

#各要素ごとに処理
execute if data storage minecraft:temp temp[-1] run function killerescape:statistics/result/_
