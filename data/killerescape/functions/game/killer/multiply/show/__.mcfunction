
##眷属の状態を表示します

#カウント
execute store result score count var if entity @e[type=minecraft:wandering_trader,tag=multiply]

#表示
title @s actionbar {"translate":"%s | %s", "with":[{"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret":true},{"translate":"眷属稼働数 %s / %s","with":[{"score":{"name":"count","objective":"var"}},{"score":{"name":"multiply_count","objective":"const"}}]}]}

#通常UIを表示しない
tag @s remove display_ui
