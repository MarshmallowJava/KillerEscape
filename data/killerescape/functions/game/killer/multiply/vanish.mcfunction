
##実行者である眷属を削除します

#検索
function killerescape:util/get_current

#演出
particle minecraft:witch ~ ~1 ~ 0.6 0.7 0.6 0 50 force @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.25 0

#削除
tp @e[type=minecraft:zombie,tag=current] ~ ~-1000 ~
tp @s ~ ~-1000 ~
kill @e[type=minecraft:zombie,tag=current]
kill @s[type=minecraft:wandering_trader]
