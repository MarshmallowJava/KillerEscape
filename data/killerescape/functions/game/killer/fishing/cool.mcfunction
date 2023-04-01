
##釣り鬼の能力のクールダウン値を表示します

scoreboard players remove @s cool_fishing 1

scoreboard players operation remain var = @s cool_fishing
execute if entity @s[tag=display_ui] run function killerescape:game/ability/show_remain

tag @s remove display_ui
