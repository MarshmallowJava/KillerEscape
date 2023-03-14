
##スキルチェックに成功した時に呼び出されます

#表示
tellraw @s {"text":"[システム] スキルチェック成功しました","italic": false,"color": "yellow"}

#サウンド
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 0

#終了
scoreboard players reset @s skillcheck_time
