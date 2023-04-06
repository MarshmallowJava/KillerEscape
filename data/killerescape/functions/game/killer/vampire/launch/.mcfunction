
##ポイントを設置します

#生成
summon minecraft:bat ~ ~1 ~ {NoAI:1b,Silent:1b,Tags:["vampire_point","init"]}
execute as @e[tag=vampire_point,tag=init] positioned as @s run tp @s ~ ~ ~ ~ ~

#初期化完了
tag @e[tag=vampire_point,tag=init] remove init

#ストック減少
scoreboard players remove @s vampire_count 1

#サウンド
playsound minecraft:entity.bat.ambient master @a ~ ~ ~ 1 1 0
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1 0
