
##「俊足」のクールダウンを表示する

#表示
scoreboard players operation remain var = @s cool_dash
function killerescape:game/ability/show_remain

#通常UIを表示しない
tag @s remove display_ui

#演出
scoreboard players operation @s var = @s cool_dash
scoreboard players operation @s var -= value cool_dash
execute if score @s var matches -20.. run particle minecraft:spit ~ ~ ~ 0.2 0 0.2 0.1 10 force @a
