
##ゲームリザルト用の表示を行います

#対象プレイヤーを取得
execute store result score current entity_id run data get storage minecraft:temp temp[-1].Id
function killerescape:util/get_current

#表示
tellraw @a {"translate":"・%s - %s","color":"yellow","with":[{"selector":"@a[tag=current]"},{"storage":"minecraft:temp","nbt":"temp[-1].ability","interpret":true}]}

#データを削除
data remove storage minecraft:temp temp[-1]

#再帰呼び出し
execute if data storage minecraft:temp temp[-1] run function killerescape:statistics/result/_
