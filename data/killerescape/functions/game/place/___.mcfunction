
##実行者であるロッカーを再設置します

#生成
summon minecraft:interaction ~ ~ ~ {Tags:["box_collision","init"],response:1b,width:1.1,height:2}
summon minecraft:item_display ~ ~0.65 ~ {Tags:["box_display","init"],item:{id:"minecraft:end_portal_frame",tag:{CustomModelData:40},Count:1b}}

#回転
execute as @e[tag=box_display,tag=init] positioned as @s run tp @s ~ ~ ~ ~180 ~

#紐づけ
scoreboard players operation @e[tag=init] entity_id = @s entity_id

#サイズ設定
data modify entity @e[tag=box_display,tag=init,limit=1] transformation.scale set value [1.25f,1.25f,1.25f]

#初期化完了
tag @e[tag=init] remove init

#当たり判定追加
setblock ~ ~ ~ minecraft:waxed_oxidized_cut_copper_slab keep
setblock ~ ~1 ~ minecraft:purple_bed[part=foot] keep
