
##スキルチェックに失敗した時に呼び出されます

#表示
tellraw @s {"text":"[システム] スキルチェック失敗しました","italic": false,"color": "red"}

#サウンド
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1 0

#終了
scoreboard players reset @s skillcheck_time
