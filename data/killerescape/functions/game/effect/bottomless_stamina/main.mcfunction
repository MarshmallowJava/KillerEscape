
#スタミナ回復速度上昇
scoreboard players operation @a[scores={bottomless_stamina=1..}] stamina_regen *= #3 const
scoreboard players operation @a[scores={bottomless_stamina=1..}] stamina_regen /= #2 const

#残り時間減少
scoreboard players remove @a[scores={bottomless_stamina=1..}] bottomless_stamina 1

#通知
tellraw @a[scores={bottomless_stamina=1}] {"text":"[システム] 活力効果が終了しました","color": "red"}
execute as @a[scores={bottomless_stamina=1}] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2 0

#演出
execute at @a[scores={bottomless_stamina=1..}] run particle minecraft:happy_villager ~ ~1 ~ 0.6 0.7 0.6 1 1 force @a
