
##効果発動時の処理を行います

#追加拘束時間の確定
scoreboard players operation addition var = @s shadow_time
scoreboard players operation addition var *= shadow_addition const
scoreboard players operation addition var += shadow_base const

#拘束
execute as @a[tag=survivor,gamemode=!spectator,tag=!hiding,distance=..1.5] at @s run function killerescape:game/killer/shadow/launch/___
