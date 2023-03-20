##能力発動時処理

#演出
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1.8 1
particle minecraft:crit ~ ~1 ~ 0.25 0.5 0.25 1 50 force @a

#有効時間の設定
scoreboard players set @s engineer_time 100
#クールダウンの設定
scoreboard players operation @s cool_engineer = engineer_cooltime const