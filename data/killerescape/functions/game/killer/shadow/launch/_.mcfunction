
##能力発動時の処理を行います

#効果
execute positioned ^ ^ ^1 run function killerescape:game/killer/shadow/place/

#サウンド
playsound minecraft:entity.ghast.shoot master @s ~ ~ ~ 1 0.5 0
playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 1 0

#クールダウン設定
scoreboard players set @s cool_shadow 400
