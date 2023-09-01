
##実行者に能力を１つランダムに付与します

#万が一空となってしまった場合は補充する
execute unless data storage minecraft:killerescape pool[0] run function killerescape:game/ability/role/supply/

#乱数を振る
execute store result score bound value run data get storage minecraft:killerescape pool
function random:next

#目的の要素をコピーして取り出す
data remove storage minecraft:temp result
data modify storage minecraft:temp temp set value []
scoreboard players set @s var 0
function killerescape:game/ability/role/_

#抽出後のプールを反映
data modify storage minecraft:killerescape pool set from storage minecraft:temp temp

#データが存在すれば続行
execute unless data storage minecraft:temp result run function killerescape:game/ability/role/___
execute if data storage minecraft:temp result run function killerescape:game/ability/role/____
