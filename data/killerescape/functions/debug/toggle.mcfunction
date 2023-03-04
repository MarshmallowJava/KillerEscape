
##デバッグ用処理「トグル」
##デバッグ用の表示などの切り替えを行います

#切り替え
scoreboard players add debugmode const 1
scoreboard players operation debugmode const %= #2 const

#表示
execute if score debugmode const matches 0 run tellraw @s {"text":"[システム] デバッグモードを 無効 にしました","italic": false,"color": "yellow"}
execute if score debugmode const matches 1 run tellraw @s {"text":"[システム] デバッグモードを 有効 にしました","italic": false,"color": "yellow"}

#サウンド
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 0
