
##実行者であるロッカーを再設置します

#生成
summon minecraft:interaction ~ ~ ~ {Tags:["box_collision","init"],response:1b,width:1.1,height:2}

#紐づけ
scoreboard players operation @e[tag=box_collision,tag=init] entity_id = @s entity_id

#初期化完了
tag @e[tag=box_collision,tag=init] remove init

#見た目追加
data modify entity @s ArmorItems set value [{},{},{},{id:"minecraft:end_portal_frame",tag:{CustomModelData:40},Count:1b}]

#当たり判定追加
setblock ~ ~ ~ minecraft:waxed_oxidized_cut_copper_slab keep
setblock ~ ~1 ~ minecraft:purple_bed[part=foot] keep
