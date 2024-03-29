
##ゲート用アーマースタンドをマーカーに置き換えます
##実行者はアーマースタンドに限定されます

#マーカー生成
summon minecraft:marker ~ ~ ~ {Tags:["map_unique_entity","gate","init"]}
execute as @e[tag=gate,tag=init] run tp @s ~ ~ ~ ~ ~

#紐づけ
scoreboard players operation @e[tag=gate,tag=init] entity_id = @s entity_id

#初期化完了
tag @e[tag=gate,tag=init] remove init

#実行者を削除
kill @s[type=minecraft:armor_stand]
