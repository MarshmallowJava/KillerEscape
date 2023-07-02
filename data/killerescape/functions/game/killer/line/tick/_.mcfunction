
##警戒線の処理を行います

#演出
particle minecraft:dust 0 1 0 1 ~ ~ ~ 0 0 0 0 0 force @a[tag=survivor,distance=..3]
particle minecraft:dust 0 1 0 1 ~ ~ ~ 0 0 0 0 0 force @a[tag=!survivor]

#当たり判定
tag @a[tag=survivor,nbt=!{ActiveEffects:[{Id:24}]},distance=..0.5] add hitten

#再起
execute positioned ^ ^ ^0.5 unless entity @s[distance=..0.5] run function killerescape:game/killer/line/tick/_
