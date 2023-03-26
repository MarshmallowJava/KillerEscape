##発動処理
#余りを算出
scoreboard players operation @s temporary = @s repair_time
scoreboard players operation @s temporary %= coop_repair_cooltime const
#余りが0ならボーナス適用
execute if score @s temporary matches 0 run scoreboard players operation @s repair_bonus += coop_repair_bonus const