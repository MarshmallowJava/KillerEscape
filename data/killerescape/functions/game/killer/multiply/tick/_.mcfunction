
##眷属の処理を行います

#追跡
execute facing entity @a[tag=current] feet rotated ~ 0 positioned ^ ^ ^0.1 if block ~ ~ ~ #killerescape:pass_through run tp @s ^ ^ ^0.1 ~ 0

#発光
effect give @s minecraft:glowing 5 0 true

#フラグ
scoreboard players set @s var 0
execute if entity @a[tag=current,distance=..1] run scoreboard players set @s var 1

#効果付与
execute if score @s var matches 1 as @a[tag=current] at @s run function killerescape:game/killer/multiply/launch/__
execute if score @s var matches 1 run function killerescape:game/killer/multiply/vanish

#速度バフを付与
effect give @a[tag=killer] minecraft:speed 1 0 true

#板を当てられた
execute if entity @e[tag=board,nbt={ArmorItems:[{tag:{animating:1b}}]},distance=..1.5] run function killerescape:game/killer/multiply/vanish
