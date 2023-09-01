
##実行者に能力を１つランダムに付与します

#エンティティIDを埋め込む
execute store result storage minecraft:temp result.tag.EntityID int 1 run scoreboard players get @s entity_id

#自動BANモードが有効なら排除する
execute if score autoban const matches 1 run function killerescape:game/ability/role/__

#アイテムを付与
data modify storage minecraft:killerescape arguments set value []
data modify storage minecraft:killerescape arguments append from storage minecraft:temp result
function killerescape:util/give_item/

#表示
tellraw @s [{"translate":"[システム] 能力「%s」が付与されました","italic": false,"color": "yellow","with":[{"storage":"minecraft:temp","nbt":"result.tag.display.Name","interpret": true}]}]

#統計データ作成
function killerescape:statistics/report0
