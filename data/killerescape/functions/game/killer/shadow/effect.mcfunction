
##鬼が影の上にいる間の処理を行います

#速度上昇
effect give @s minecraft:speed 1 1 true

#透明
effect give @s minecraft:invisibility 1 0 true

#演出
execute rotated ~ 0 run particle minecraft:squid_ink ^ ^1 ^-0.15 0 0.5 0 0.05 10 force @a[distance=0.1..]
