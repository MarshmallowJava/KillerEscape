
##痕跡の処理を行います

#時間経過
scoreboard players add @s time 1

#消滅
kill @s[type=minecraft:marker,scores={time=100..}]

#演出
particle minecraft:dust_color_transition 0.5 0 0 1 0 0 0.5 ~ ~ ~ 0.1 0.1 0.1 0 10 force @a
