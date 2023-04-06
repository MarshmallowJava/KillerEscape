
##判定ループ部分の処理を行います

execute unless block ~ ~ ~ #killerescape:see_through run scoreboard players set result var 1

#演出
particle minecraft:snowflake ~ ~-0.5 ~ 0 0 0 0 1 force @a[tag=!killer,distance=2..]

#ループ
execute unless score result var matches 1 unless entity @s[distance=..0.5] positioned ^ ^ ^0.5 run function killerescape:game/killer/ice/trace/_
