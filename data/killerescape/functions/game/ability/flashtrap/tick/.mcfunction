
#失敗条件
scoreboard players set @s var 0
execute unless entity @e[tag=communicator,tag=repairable,tag=!repaired,distance=..3] run scoreboard players set @s var 1
execute if score @s cool_flashtrap matches 1.. run scoreboard players set @s var 2

#失敗表示
title @s[scores={var=1}] actionbar {"text":"修理が未完了の通信機の近くに移動してください","italic": false,"color": "red"}
tag @s[scores={var=1}] remove display_ui

#クールダウン表示
execute if score @s var matches 2 run function killerescape:game/ability/flashtrap/show

#発動
execute if entity @s[scores={var=0,useItem=1}] at @s run function killerescape:game/ability/flashtrap/launch/
