
##実行者を復活させます

#移動
execute rotated as @s run tp @s ~ ~ ~ ~ ~ 

#復活
tag @s remove eliminated
scoreboard players set @s hook_count 0
scoreboard players set @s hook_time 0
gamemode adventure @s

#連続復活を防ぐ
tag @s add revived

#演出
particle minecraft:snowflake ~ ~1 ~ 0 0 0 0.15 100 force @a
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0

#通知
tellraw @a {"translate":"[システム] %s が復活しました","color": "green", "with":[{"selector":"@s"}]}
