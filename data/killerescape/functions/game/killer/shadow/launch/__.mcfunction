
##効果発動時の処理を行います

#拘束
execute as @a[tag=survivor,gamemode=!spectator,tag=!hiding,distance=..1.5] at @s run function killerescape:game/killer/shadow/launch/___
