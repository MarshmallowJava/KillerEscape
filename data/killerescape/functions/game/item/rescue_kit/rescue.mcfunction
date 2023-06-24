
##ターゲットを治療します

#損傷状態を回復
scoreboard players set @a[tag=target] damage_stage 0
tag @a[tag=target] remove lying
tag @a[tag=target] add update_health


#演出
execute at @a[tag=target] run particle minecraft:heart ~ ~1 ~ 0 0 0 1 1 force @a[tag=target]
execute at @a[tag=target] run particle minecraft:heart ~ ~1 ~ 0 0 0 1 1 force @s
execute as @a[tag=target] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 0
