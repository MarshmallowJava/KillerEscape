
##担ぎ状態で近くにフックがあった場合の処理

#表示
execute if score @s sneak matches 0 run title @s actionbar "スニーク長押しでフックに吊る"

#進捗
execute if score @s sneak matches 0 run scoreboard players set @s hook_time 0
execute if score @s sneak matches 1.. run scoreboard players add @s hook_time 1

#進捗バー表示
execute if score @s hook_time matches 1.. run function killerescape:game/hook/progress

#担ぐ
execute if score @s hook_time > hooktime const as @e[tag=hook,tag=!used,limit=1,sort=nearest] run function killerescape:game/hook/hook
execute if score @s hook_time > hooktime const run scoreboard players set @s hook_time 0

#通常UIは表示しない
tag @s remove display_ui
