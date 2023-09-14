
##眷属の処理を行います

#追跡
data modify storage temp: _ set value {X:0,Y:0,Z:0}
execute store result storage temp: _.X int 1 run data get entity @a[tag=target,limit=1] Pos[0]
execute store result storage temp: _.Y int 1 run data get entity @a[tag=target,limit=1] Pos[1]
execute store result storage temp: _.Z int 1 run data get entity @a[tag=target,limit=1] Pos[2]
data modify entity @s WanderTarget set from storage temp: _
data modify entity @s[nbt={NoAI:1b}] NoAI set value 0b

#フラグ
scoreboard players set @s var 0
execute if entity @a[tag=target,distance=..1] run scoreboard players set @s var 1

#効果付与
execute if score @s var matches 1 as @a[tag=target] at @s run function killerescape:game/killer/multiply/launch/__
execute if score @s var matches 1 run function killerescape:game/killer/multiply/vanish

#速度バフを付与
effect give @a[tag=killer] minecraft:speed 1 0 true

#板を当てられた
execute if entity @e[tag=board,nbt={ArmorItems:[{tag:{animating:1b}}]},distance=..1.5] run function killerescape:game/killer/multiply/vanish

#発光
effect give @e[tag=current,type=minecraft:zombie] minecraft:glowing 5 0 true
