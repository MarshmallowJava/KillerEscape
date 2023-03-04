
##チェスト用アーマースタンドをマーカーに置き換えます
##実行者はアーマースタンドに限定されます

#マーカー生成
summon minecraft:marker ~ ~ ~ {Tags:["map_unique_entity","hook","init"]}

#紐づけ
scoreboard players operation @e[tag=hook,tag=init] entity_id = @s entity_id

#初期化完了
tag @e[tag=hook,tag=init] remove init

#実行者を削除
kill @s[type=minecraft:armor_stand]


#仮置き
setblock ~ ~ ~ minecraft:mossy_cobblestone_wall replace
setblock ~ ~1 ~ minecraft:nether_brick_fence replace
setblock ~ ~2 ~ minecraft:nether_brick_fence replace
setblock ^ ^2 ^1 minecraft:iron_bars replace
setblock ~ ~3 ~ minecraft:nether_brick_fence replace
setblock ^ ^3 ^1 minecraft:nether_brick_fence replace
