
##能力発動時の処理を行います

#召喚上限
execute store result score count var if entity @e[tag=multiply]
execute store result score max var if entity @a[tag=survivor,tag=eliminated]
execute if score count var > max var as @e[type=minecraft:wandering_trader,tag=multiply,limit=1,sort=arbitrary] at @s run function killerescape:game/killer/multiply/vanish

#生成
summon minecraft:zombie ~ ~ ~ {Tags:["multiply", "init"],NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:spawner",tag:{CustomModelData:2},Count:1b}],ActiveEffects:[{Id:24b,ShowParticles:0b,Duration:100}]}
summon minecraft:wandering_trader ~ ~ ~ {Tags:["multiply", "init"],NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b}

#同期
execute as @e[tag=multiply,tag=init,type=minecraft:wandering_trader] run function killerescape:util/allocate_id
scoreboard players operation @e[tag=multiply,tag=init,type=minecraft:zombie] entity_id = @e[tag=multiply,tag=init,type=minecraft:wandering_trader] entity_id

#向きを調整
execute as @e[tag=multiply,tag=init] positioned as @s run tp @s ~ ~ ~ ~ 0

#チームに参加
team join killer @e[tag=multiply,tag=init]

#初期化完了
tag @e[tag=multiply,tag=init] remove init

#クールダウン設定
scoreboard players operation @s cool_multiply = multiply_cool const

#演出
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1 0
