
##ロビー帰宅時の処理を行います

#ゲーム状態を「ロビー」に設定
scoreboard players set game_status time 0

#ゲームを初期化
function killerescape:game/init

#体力を全快
execute as @a run attribute @s minecraft:generic.max_health base set 20
effect give @a minecraft:instant_health 1 10 true

#アイテム削除
clear @a

#ロビーまでテレポート
execute as @a at @s positioned as @e[tag=lobby] run tp @a ~ ~ ~ ~ ~

#再描画
execute as @e[tag=ban_operator] at @s run function killerescape:config/ban/paint/
