
##スタミナを回復します

#回復
scoreboard players operation @s stamina += @s stamina_regen
scoreboard players operation @s stamina < stamina_max const

#復帰
tellraw @s[tag=!nottired,scores={stamina=1..}] {"text":"[システム] 疲労状態から回復しました","color": "green"}
scoreboard players operation @s[tag=!nottired,scores={stamina=1..}] stamina = stamina_max const

#UI更新
scoreboard players operation @s max_exp = stamina_max const
scoreboard players operation @s var = @s stamina
execute if score @s var matches ..-1 run scoreboard players operation @s var += stamina_max const
scoreboard players operation @s value_exp = @s var
