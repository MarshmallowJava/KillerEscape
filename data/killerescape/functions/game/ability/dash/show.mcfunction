
##「俊足」のクールダウンを表示する

#表示
scoreboard players operation remain var = @s cool_dash
function killerescape:game/ability/show_remain

#通常UIを表示しない
tag @s remove display_ui
