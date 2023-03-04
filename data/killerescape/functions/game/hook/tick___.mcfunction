
##救助するプレイヤー用に処理します

#表示
execute if score @s sneak matches 0 run title @s actionbar "スニーク長押しで救助する"

#進捗
execute if score @s sneak matches 0 run scoreboard players set @s rescue_time 0
execute if score @s sneak matches 1.. run scoreboard players add @s rescue_time 1

#進捗バー表示
execute if score @s rescue_time matches 1.. run function killerescape:game/hook/progress_

#救助
execute if score @s rescue_time > rescuetime const as @e[tag=hook,tag=used,limit=1,sort=nearest] at @s run function killerescape:game/hook/release
execute if score @s rescue_time > rescuetime const run scoreboard players set @s rescue_time 0

#通常UIを表示しない
tag @s remove display_ui
