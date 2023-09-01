
##ランダムプール設定データを初期化します

execute unless score flag var matches -2147483648..2147483647 run scoreboard players set flag var 0
execute store result storage minecraft:temp temp2 int 1 run scoreboard players get flag var
scoreboard players reset flag var

#生存者データ生成
execute store result score count var run data get storage minecraft:killerescape storage
data remove storage minecraft:temp temp
function killerescape:config/ban/init/_
data modify storage minecraft:killerescape ban_pool1 set from storage minecraft:temp temp
