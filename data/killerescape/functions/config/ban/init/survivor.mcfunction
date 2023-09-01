
##ランダムプール設定データを初期化します

#生存者データ生成
execute store result score count var run data get storage minecraft:killerescape storage
data remove storage minecraft:temp temp
function killerescape:config/ban/init/_
data modify storage minecraft:killerescape ban_pool1 set from storage minecraft:temp temp
