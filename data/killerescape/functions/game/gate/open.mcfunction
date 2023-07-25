
##ゲートが開放されたときに呼び出されます

#通知
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 0
tellraw @a[tag=!killer] {"text":"[システム] ゲートが開放されました","italic": false,"color": "yellow"}
tellraw @a[tag=!killer] {"text":"[システム] 鬼の攻撃力が増加した！","italic": false,"color": "red"}
tellraw @a[tag=killer] {"text":"[システム] ゲートが開放されてしまいました","italic": false,"color": "red"}
tellraw @a[tag=killer] {"text":"[システム] 攻撃力が増加した！","italic": false,"color": "yellow"}

#ボスバー設定
execute store result bossbar minecraft:remain max run scoreboard players get endgametime const
execute store result bossbar minecraft:remain2 max run scoreboard players get endgametime const

#ゲート解放
fill ^-2 ^ ^ ^3 ^4 ^ minecraft:air destroy

#現在のマップの他のゲートが開かないように
tag @e[tag=gate,tag=current_map] add opened

#強制終了までの時間を設定
scoreboard players operation endgame time = endgametime const
