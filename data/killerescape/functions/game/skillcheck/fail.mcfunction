
##スキルチェックに失敗した時に呼び出されます

#表示
tellraw @s {"text":"[システム] スキルチェック失敗しました","italic": false,"color": "red"}

#サウンド
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1 0

#終了
scoreboard players reset @s skillcheck_time

#ペナルティ
scoreboard players set @e[tag=communicator,tag=repairable,limit=1,sort=nearest] skillcheck_time 100
execute at @e[tag=communicator,tag=repairable,limit=1,sort=nearest] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 10 force @a
effect give @s minecraft:glowing 3 0 true
