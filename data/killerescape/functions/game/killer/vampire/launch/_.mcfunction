
##ポイントを設置します

#生成
summon minecraft:bat ~ ~1 ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["vampire","init"]}
execute as @e[tag=vampire,tag=init] positioned as @s run tp @s ~ ~ ~ ~ ~

#紐づけ
scoreboard players operation @e[tag=vampire,tag=init] entity_id = @s entity_id
scoreboard players operation @e[tag=vampire,tag=init] target_id = @e[tag=vampire_point,tag=selected,limit=1] entity_id

#初期化完了
tag @e[tag=vampire,tag=init] remove init

#演出
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 0.5 0
particle minecraft:dust 0 0 0 3 ~ ~1 ~ 0.4 0.5 0.4 1 50 force @a

#モード変更
tag @s remove mode_choose
