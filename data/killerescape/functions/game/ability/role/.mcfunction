
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

#エンティティIDを埋め込む
execute store result storage minecraft:temp result.tag.EntityID int 1 run scoreboard players get @s entity_id

#アイテムを付与
data modify storage minecraft:killerescape arguments set value []
data modify storage minecraft:killerescape arguments append from storage minecraft:temp result
function killerescape:util/give_item/

#表示
tellraw @s [{"translate":"[システム] 能力「%s」が付与されました","italic": false,"color": "yellow","with":[{"storage":"minecraft:temp","nbt":"result.tag.display.Name","interpret": true}]}]

#統計データ作成
function killerescape:statistics/report0
