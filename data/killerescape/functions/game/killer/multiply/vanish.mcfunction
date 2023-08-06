
##実行者である眷属を削除します

#演出
particle minecraft:witch ~ ~1 ~ 0.6 0.7 0.6 0 50 force @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.25 0

#削除
tp @s ~ ~-1000 ~
kill @s[type=minecraft:zombie]
