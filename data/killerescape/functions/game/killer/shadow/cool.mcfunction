
##影鬼の能力のクールダウン値を表示します

scoreboard players remove @s cool_shadow 1

scoreboard players operation remain var = @s cool_shadow
function killerescape:game/ability/show_remain

tag @s remove display_ui
