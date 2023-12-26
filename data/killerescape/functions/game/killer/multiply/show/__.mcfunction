
##眷属の状態を表示します

#カウント
execute store result score count var if entity @e[type=minecraft:wandering_trader,tag=multiply,tag=hassoul]
execute store result score count2 var if entity @e[type=minecraft:wandering_trader,tag=multiply]

#表示
title @s actionbar {"translate":"稼働 / 設置数 | %s / %s (最大%s体設置可能)","with":[{"score":{"name":"count","objective":"var"}},{"score":{"name":"count2","objective":"var"}},{"score":{"name":"multiply_count","objective":"const"}}]}

#通常UIを表示しない
tag @s remove display_ui
