
##片方のポイントを設置します

#生成
summon minecraft:marker ~ ~ ~ {Tags:["line_point", "to", "init"]}

#紐づけ
scoreboard players operation @e[tag=line_point,tag=init] entity_id = @e[tag=line_point,tag=!paired,tag=!to,limit=1] entity_id

#初期化完了
tag @e[tag=line_point,tag=init] remove init
tag @e[tag=line_point,tag=!paired,tag=!to] add from
tag @e[tag=line_point,tag=!paired] add paired

playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.5 0
