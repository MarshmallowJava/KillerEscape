
##能力の使用を中断します

#クールタイム設定
scoreboard players operation @s cool_ice = ice_cooltime const

#サウンド
playsound minecraft:entity.wither_skeleton.death master @a ~ ~ ~ 2 0.5 0
playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1 0

#通知
execute if score @s ice_time matches 0 run tellraw @s {"text":"[システム] 冷気が尽きたため能力が中断されました","color": "red"}
