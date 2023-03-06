
##各プレイヤー毎の処理です

#自身をマーク
function killerescape:util/owner

#可能なアクションを獲得
scoreboard players set @s var 0
execute anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 as @e[tag=communicator,tag=can_sabotage,distance=..1] if score @s time < repairtime const run scoreboard players set @a[tag=owner] var 1
execute anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 if entity @e[tag=board,tag=downed,tag=!broken,distance=..2] run scoreboard players set @s var 2

#表示
execute if score @s var matches 1 if score @s sabotage_time matches 0 run title @s actionbar "右クリック長押しでサボタージュ"
execute if score @s var matches 2 if score @s boardbreak_time matches 0 run title @s actionbar "右クリック長押しで板を破壊する"
tag @e[scores={var=1..}] remove display_ui

#アニメーション
execute if score @s sabotage_time matches 1 run function killerescape:game/item/killer_weapon/animation
execute if score @s sabotage_time matches 1.. unless entity @s[scores={var=1,useItem=1..}] run function item_anime:stop_animation/mainhand
execute if score @s boardbreak_time matches 1 run function killerescape:game/item/killer_weapon/animation
execute if score @s boardbreak_time matches 1.. unless entity @s[scores={var=2,useItem=1..}] run function item_anime:stop_animation/mainhand

#進捗表示
execute if score @s sabotage_time matches 1.. run function killerescape:game/item/killer_weapon/progress
execute if score @s boardbreak_time matches 1.. run function killerescape:game/item/killer_weapon/progress_

#サボタージュ実行
execute unless entity @s[scores={var=1,useItem=1..}] run scoreboard players set @s sabotage_time 0
execute if score @s var matches 1 run scoreboard players add @s[scores={useItem=1..}] sabotage_time 1
execute if score @s var matches 1 if score @s sabotage_time > sabotagetime const as @e[tag=communicator,tag=can_sabotage,limit=1,sort=nearest] at @s run function killerescape:game/item/killer_weapon/sabotage
execute if score @s var matches 1 if score @s sabotage_time > sabotagetime const run scoreboard players set @s sabotage_time 0

#板破壊実行
execute unless entity @s[scores={var=2,useItem=1..}] run scoreboard players set @s boardbreak_time 0
execute if score @s var matches 2 run scoreboard players add @s[scores={useItem=1..}] boardbreak_time 1
execute if score @s var matches 2 if score @s boardbreak_time > boardbreaktime const as @e[tag=board,tag=downed,tag=!broken,limit=1,sort=nearest] at @s run function killerescape:game/item/killer_weapon/boardbreak
execute if score @s var matches 2 if score @s boardbreak_time > boardbreaktime const run scoreboard players set @s boardbreak_time 0
