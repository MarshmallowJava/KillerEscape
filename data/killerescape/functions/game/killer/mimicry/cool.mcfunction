
##謎鬼の能力のクールダウン値を表示します

scoreboard players remove @s cool_mimicry 1

scoreboard players operation remain var = @s cool_mimicry
execute if entity @s[tag=display_ui] run function killerescape:game/ability/show_remain

tag @s remove display_ui
