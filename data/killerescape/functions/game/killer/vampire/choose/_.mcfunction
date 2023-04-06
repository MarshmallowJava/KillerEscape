
##角度的距離を計算します

#生成
summon minecraft:marker ~ ~ ~ {Tags:["pos"]}

#回転
execute facing entity @s eyes run tp @e[tag=pos] ~ ~ ~ ~ ~

#計算
scoreboard players set @s var 0
execute store result score a var run data get entity @e[tag=pos,limit=1] Rotation[0]
scoreboard players operation b var = ry var
function killerescape:util/displacement
scoreboard players operation result var *= result var
scoreboard players operation @s var += result var
execute store result score a var run data get entity @e[tag=pos,limit=1] Rotation[1]
scoreboard players operation b var = rx var
function killerescape:util/displacement
scoreboard players operation result var *= result var
scoreboard players operation @s var += result var

#削除
kill @e[type=minecraft:marker,tag=pos]
