
##生存者毎に処理します

#表示
title @s actionbar "スニークで板を倒す"

#板を倒す
execute if score @s sneak matches 2 as @e[tag=board,tag=!downed,limit=1,sort=nearest] at @s run function killerescape:game/board/down

#通常UIを表示しない
tag @s remove display_ui
