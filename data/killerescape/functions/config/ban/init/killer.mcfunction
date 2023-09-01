
##ランダムプール設定データを初期化します

#キラーデータ生成
execute store result score count var run data get storage minecraft:killerescape killers
data remove storage minecraft:temp temp
function killerescape:config/ban/init/_
data modify storage minecraft:killerescape ban_pool0 set from storage minecraft:temp temp
