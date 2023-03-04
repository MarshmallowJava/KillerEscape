
##カウントダウンの処理を行います

#カウントダウン値を加算
scoreboard players add countdown time 1

#タイトルを表示
execute if score countdown time matches 24 run title @a title "3"
execute if score countdown time matches 48 run title @a title "2"
execute if score countdown time matches 72 run title @a title "1"
execute if score countdown time matches 96 run title @a title "START"

#サウンドを再生
execute if score countdown time matches 24 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 0
execute if score countdown time matches 48 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 0
execute if score countdown time matches 72 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 0
execute if score countdown time matches 96 as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 1 0.5 0

#ゲーム開始時処理
execute if score countdown time matches 96.. run function killerescape:game/start
execute if score countdown time matches 96.. run scoreboard players reset countdown time
