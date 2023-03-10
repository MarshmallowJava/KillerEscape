
##生存者毎に処理を行います

#距離に応じた発動間隔を取得
scoreboard players set @s var 20
execute if entity @a[tag=killer,distance=..24] run scoreboard players remove @s var 2
execute if entity @a[tag=killer,distance=..20] run scoreboard players remove @s var 2
execute if entity @a[tag=killer,distance=..16] run scoreboard players remove @s var 3
execute if entity @a[tag=killer,distance=..8] run scoreboard players remove @s var 3

#発動判定
scoreboard players operation heartbeat var = heartbeat time
scoreboard players operation heartbeat var %= @s var

#発動
execute unless score @s var matches 20 if score heartbeat var matches 0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1 0
