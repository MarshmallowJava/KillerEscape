
##専用エンティティを初期化します

#マーカー生成
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["smoke_position","init"]}

#紐づけ
ride @e[tag=smoke_position,tag=init,limit=1] mount @s

#初期化完了
tag @e[tag=smoke_position,tag=init] remove init

#タグ付け
tag @s add initialized

#最付近のプレイヤーをリセット
scoreboard players set @a[tag=survivor,limit=1,sort=nearest] smoke_time 0
