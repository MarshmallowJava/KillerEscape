
##デコイの処理を行います

#追尾
execute facing entity @a[tag=survivor,tag=!eliminated,limit=1,sort=nearest] feet rotated ~ 0 run tp @s ^ ^ ^0.25 ~ ~

#被弾
execute as @a[tag=survivor,tag=!eliminated,distance=..1,limit=1,sort=nearest] at @s run function killerescape:game/killer/decoy/launch/___
execute if entity @a[tag=survivor,tag=!eliminated,distance=..1] run scoreboard players set @s time 200

#時間経過
scoreboard players add @s time 1

#痕跡
scoreboard players operation @s var = @s time
scoreboard players operation @s var %= #10 const
execute if score @s var matches 0 run function killerescape:game/killer/decoy/launch/__

#消滅
kill @s[type=minecraft:marker,scores={time=200..}]

#演出
particle minecraft:dust_color_transition 0.5 0 0 1 0 0 0.5 ~ ~1 ~ 0.1 0.1 0.1 0 10 force @a[tag=survivor]
