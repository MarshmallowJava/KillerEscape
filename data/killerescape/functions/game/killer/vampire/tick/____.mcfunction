
##移動処理を行います

#移動
execute facing entity @e[tag=vampire_target,distance=0.1..] feet run tp @s ^ ^ ^0.1 ~ ~

#終了
execute at @s if entity @e[tag=vampire_target,distance=..0.1] run tag @s add finished
