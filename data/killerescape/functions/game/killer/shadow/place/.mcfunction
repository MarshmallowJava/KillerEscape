
##実際の発動位置で呼び出されます

#生成
summon minecraft:marker ~ ~ ~ {Tags:["shadow","pre","init"]}

#向き調整
execute as @e[tag=shadow,tag=init] positioned as @s run tp @s ~ ~ ~ ~ 0

#紐づけ
scoreboard players operation @e[tag=shadow,tag=init] entity_id = @s entity_id

#持続時間
scoreboard players set @e[tag=shadow,tag=init] time -30

#初期化完了
tag @e[tag=shadow,tag=init] remove init
