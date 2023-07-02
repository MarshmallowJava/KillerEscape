
##設置を行います

#条件分岐

execute store result score @s var if entity @e[tag=line_point,tag=!paired]

execute if score @s var matches 0 run function killerescape:game/killer/line/launch/_
execute if score @s var matches 1 if entity @e[tag=line_point,tag=!paired,distance=1..15] run function killerescape:game/killer/line/launch/__

#消去
execute store result score @s var if entity @e[tag=line_point,tag=from]
execute if score @s var matches 6.. as @e[tag=line_point,tag=from,limit=1,sort=arbitrary] run function killerescape:game/killer/line/remove

#演出
particle minecraft:witch ~ ~ ~ 0 0 0 1 10 force @a
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 2 0
