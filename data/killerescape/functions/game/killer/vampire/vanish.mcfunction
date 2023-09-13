
##蝙蝠を削除します

#削除
tp @s ~ ~-1000 ~
kill @s[type=minecraft:bat]

#演出
particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 50 force @a
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1 0
