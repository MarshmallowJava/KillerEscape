
#時間を設定
scoreboard players operation @s vampire_accel = vampire_accel const

#回収した血を削除
kill @e[type=minecraft:marker,tag=blood,distance=..2]

#サウンド
playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 1 0.75 0
