
##ロビー帰宅時の処理を行います

#ゲーム状態を「ロビー」に設定
scoreboard players set game_status time 0

#ゲームを初期化
function killerescape:game/init

#アイテム削除
clear @a

#ロビーまでテレポート
execute as @a at @s positioned as @e[tag=lobby] run tp @a ~ ~ ~ ~ ~
