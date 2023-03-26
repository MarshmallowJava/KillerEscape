
##効果発動時の処理を行います

#拘束
execute as @a[tag=survivor,gamemode=!spectator,distance=..3] at @s run function killerescape:game/killer/shadow/launch/___

#サウンド
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1 0
