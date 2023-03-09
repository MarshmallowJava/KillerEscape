
##能力「ダッシュ」の発動時の処理

#エフェクト付与
effect give @s minecraft:speed 1 4 false

#クールダウン発生
scoreboard players operation @s cool_dash = value cool_dash

#サウンド
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.5 0
