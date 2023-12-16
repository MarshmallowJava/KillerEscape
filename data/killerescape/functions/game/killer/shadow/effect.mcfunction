
##鬼が影の上にいる間の処理を行います

#状態を確認
execute store result score @s var if entity @e[tag=shadow,tag=!pre,distance=..1.5] 

#影に入ったとき
execute if score @s[tag=!in_shadow] var matches 1.. run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 0.5 0

#抜け出したとき
execute if score @s[tag=in_shadow] var matches 0 run effect clear @s minecraft:speed
execute if score @s[tag=in_shadow] var matches 0 run effect clear @s minecraft:invisibility
execute if score @s[tag=in_shadow] var matches 0 run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 0.75 0
execute if score @s[tag=in_shadow] var matches 0 run kill @e[type=minecraft:marker,tag=shadow]

#速度上昇
effect give @s[tag=in_shadow] minecraft:speed 1 1 true
effect give @s[tag=in_shadow] minecraft:invisibility 1 0 true

#保存
execute if score @s var matches 0 run tag @s remove in_shadow
execute if score @s var matches 1.. run tag @s add in_shadow

#演出
execute if entity @s[tag=in_shadow] rotated ~ 0 run particle minecraft:squid_ink ^ ^1 ^-0.15 0 0.5 0 0.05 10 force @a[distance=0.1..]
