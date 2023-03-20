##修理時処理
#有効時間中の処理
execute as @a if score @s engineer_time matches 1.. at @s run function killerescape:game/ability/engineer/bonus

#有効時間の減少
execute if score @s engineer_time matches 1.. run scoreboard players remove @s engineer_time 1
