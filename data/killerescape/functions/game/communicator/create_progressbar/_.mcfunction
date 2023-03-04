
##進捗バーの作成、紐づけを行います
##実行者はcommunicatorに限られます

#進捗バー生成
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Duration:2147483647,Tags:["repair_progress", "init"],CustomNameVisible:1b,CustomName:'" "'}

#紐づけ
scoreboard players operation @e[tag=repair_progress,tag=init] entity_id = @s entity_id

#初期化完了
tag @e[tag=repair_progress,tag=init] remove init

#進捗バー更新タグ付与
tag @s add update_ui
