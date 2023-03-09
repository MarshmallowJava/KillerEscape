
##キラーに板を当てたときの処理を行います

#移動不可
effect give @s minecraft:slowness 3 255 true

#攻撃不可
scoreboard players set @s cool_attack 60

#演出
particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 30 force @a
playsound minecraft:item.shield.block master @a ~ ~ ~ 1 0.5 0
