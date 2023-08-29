
##能力を初期化します

#スコアをリセット
scoreboard players reset * smoke_time

#エンティティを削除
kill @e[type=minecraft:area_effect_cloud,tag=smoke_position]
kill @e[type=minecraft:snowball]
