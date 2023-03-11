
##血痕の処理を行います

execute if block ~ ~-0.1 ~ minecraft:air run tp @s ~ ~-0.1 ~

#表示
execute at @s unless block ~ ~-0.1 ~ minecraft:air run particle minecraft:dust 0.5 0 0 1 ~ ~ ~ 0.2 0 0.2 1 10 force @a

#時間経過で消滅
scoreboard players add @s time 1
kill @s[type=minecraft:marker,scores={time=200..}]
