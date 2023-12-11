
##眷属の処理を行います

#検索
function killerescape:util/get_current

#発光
effect give @e[tag=current,type=minecraft:zombie] minecraft:glowing 5 0 true

#速度バフを本体に付与
effect give @a[tag=killer] minecraft:speed 1 0 true

#追跡処理
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

data modify storage temp: _ set value {X:0,Y:0,Z:0}
execute store result storage temp: _.X int 1 run data get entity @a[tag=target,limit=1] Pos[0]
execute store result storage temp: _.Y int 1 run data get entity @a[tag=target,limit=1] Pos[1]
execute store result storage temp: _.Z int 1 run data get entity @a[tag=target,limit=1] Pos[2]
data modify entity @s WanderTarget set from storage temp: _
data modify entity @s[nbt={NoAI:1b}] NoAI set value 0b


#追跡対象が透明なら追跡中止
execute unless entity @a[tag=current,nbt=!{ActiveEffects:[{Id:14}]}] run scoreboard players reset @s target_id

#煙の中に入れば追跡中止
execute if entity @e[tag=smoke,distance=..3] run scoreboard players reset @s target_id

#フラグ
scoreboard players set @s var 0
execute if entity @a[tag=current,distance=..1] run scoreboard players set @s var 1

#効果付与
execute if score @s var matches 1 as @a[tag=current] at @s run function killerescape:game/killer/multiply/launch/__
execute if score @s var matches 1 run function killerescape:game/killer/multiply/vanish
