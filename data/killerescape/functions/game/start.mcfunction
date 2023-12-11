
##ゲーム開始時の処理を行います

#ゲームを初期化
function killerescape:init
function killerescape:game/init

#ゲーム状態を「ゲーム中」に設定
scoreboard players set game_status time 1

#役職確定
tag @a[tag=!selected,gamemode=!spectator] add survivor
tag @a[tag=selected] add killer
tag @a[tag=killer] add threat
tag @a remove selected

#チーム加入
team join survivor @a[tag=survivor]
team join killer @a[tag=killer]

#プールリセット
function killerescape:game/ability/role/supply/
execute if score autoban const matches 1 unless data storage minecraft:killerescape pool[0] run function killerescape:config/ban/init/survivor
execute if score autoban const matches 1 unless data storage minecraft:killerescape pool[0] run function killerescape:game/ability/role/supply/

#アイテム削除
clear @a

#能力付与
execute as @a[tag=survivor] at @s run function killerescape:game/ability/role/
execute as @a[tag=killer] at @s run function killerescape:game/killer/role/

#アイテム付与
execute as @a[tag=survivor] run function killerescape:game/give_items_survivor
execute as @a[tag=killer] run function killerescape:game/give_items_killer

#鬼の移動速度を設定
execute as @a[tag=killer] run attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "killer_basespeed" 0.05 add

#ノックバック耐性を設定(被ダメージ時に打ち上がるのを防ぐ)
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 1.0

#タイトル処理
title @a title "ゲームスタート"

#ボスバー処理
bossbar set minecraft:remain players @a
function killerescape:game/bossbar/on_repaired

#テレポート
execute as @a[tag=survivor] at @s positioned as @e[tag=spawn_survivor,limit=1,sort=random] run tp @s ~ ~ ~ ~ ~
execute as @a[tag=killer] at @s positioned as @e[tag=spawn_killer,limit=1,sort=random] run tp @s ~ ~ ~ ~ ~

#イベントトリガー
function killerescape:event/on_start_game
