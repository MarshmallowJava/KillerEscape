
##from,toの範囲かどうか判定します

#生成
summon minecraft:marker ~ ~ ~ {Tags:["pos"]}

#回転
execute facing entity @s feet run tp @e[tag=pos] ~ ~ ~ ~ 0

#判定
execute store result score degree var run data get entity @e[tag=pos,limit=1] Rotation[0]
function killerescape:util/contains
execute if score result var matches 0 run tag @s remove watched_by_ice

#削除
kill @e[type=minecraft:marker,tag=pos]
