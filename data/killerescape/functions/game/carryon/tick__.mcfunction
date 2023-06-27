
##すでに担いでいる場合の処理を行います

#リセット
scoreboard players set @s carryon 0

#表示
execute if score @s sneak matches 0 run title @s actionbar "スニーク長押しで生存者を下ろす"

#解放
execute if score @s sneak matches 30 as @e[tag=carryon,tag=current] at @s run function killerescape:game/carryon/release
execute if score @s sneak matches 30 run function killerescape:util/get_current

#通常UIを表示しない
tag @s remove display_ui
