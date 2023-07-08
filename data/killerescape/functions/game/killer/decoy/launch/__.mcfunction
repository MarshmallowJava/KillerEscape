
##チャージ

#生成
summon minecraft:marker ~ ~ ~ {Tags:["decoy_trail","init"]}

#紐づけ
scoreboard players operation @e[tag=decoy_trail,tag=init] entity_id = @s entity_id

#初期化完了
tag @e[tag=decoy_trail,tag=init] remove init
