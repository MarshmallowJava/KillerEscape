
##ゲーム終了直後の処理を行います

#ゲーム状態を「リザルト」に設定
scoreboard players set game_status time 2

#リザルト時間管理をリセット
scoreboard players set result time 0

#結果を表示
title @a reset
execute if score result var matches -1 run title @a subtitle {"text":"キラーの勝利","italic": false, "color":"dark_red"}
execute if score result var matches 0 run title @a subtitle {"text":"引き分け","italic": false, "color":"green"}
execute if score result var matches 1 run title @a subtitle {"text":"プレイヤーの勝利","italic": false, "color":"blue"}
title @a title {"text":"終了","italic": false,"color": "yellow"}

#サウンド
execute if score result var matches -1 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 0.5 0
execute if score result var matches 0 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5 0
execute if score result var matches 1 as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 0
