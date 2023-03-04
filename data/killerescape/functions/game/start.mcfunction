
##ゲーム開始時の処理を行います

#ゲームを初期化
function killerescape:game/init

#ゲーム状態を「ゲーム中」に設定
scoreboard players set game_status time 1

#役職確定
tag @a[tag=!selected] add survivor
tag @a[tag=selected] add killer
tag @a remove selected

#アイテム付与
clear @a
execute as @a[tag=survivor] run function killerescape:game/give_items_survivor
execute as @a[tag=killer] run function killerescape:game/give_items_killer

execute as @a[tag=survivor] at @s run function killerescape:game/ability/role/

#テレポート
execute as @a[tag=survivor] at @s positioned as @e[tag=spawn_survivor,limit=1,sort=random] run tp @s ~ ~ ~ ~ ~
execute as @a[tag=killer] at @s positioned as @e[tag=spawn_killer,limit=1,sort=random] run tp @s ~ ~ ~ ~ ~
