
##ランダムプール設定データを任意の値で初期化します

execute unless score flag var matches -2147483648..2147483647 run scoreboard players set flag var 0
execute store result storage minecraft:temp temp2 int 1 run scoreboard players get flag var
scoreboard players reset flag var

#キラーデータ生成
execute store result score count var run data get storage minecraft:killerescape killers
data remove storage minecraft:temp temp
function killerescape:config/ban/init/_
data modify storage minecraft:killerescape ban_pool0 set from storage minecraft:temp temp
