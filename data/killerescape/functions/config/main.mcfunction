
##コンフィグに関する処理を行います

#初期値
execute as @a unless score @s enableBlood matches -2147483648..2147483647 run scoreboard players set @s enableBlood 1
execute as @a unless score @s nightVision matches -2147483648..2147483647 run scoreboard players set @s nightVision 0

#変更検知
scoreboard players set @a var 0

#流血表現
scoreboard players set @a[scores={enableBlood_trg=1}] var 1
scoreboard players add @a[scores={enableBlood_trg=1}] enableBlood 1
scoreboard players operation @a[scores={enableBlood_trg=1}] enableBlood %= #2 const

#暗視
scoreboard players set @a[scores={nightVision_trg=1}] var 1
scoreboard players add @a[scores={nightVision_trg=1}] nightVision 1
scoreboard players operation @a[scores={nightVision_trg=1}] nightVision %= #2 const
effect clear @a[scores={nightVision=0}] minecraft:night_vision
effect give @a[scores={nightVision=1}] minecraft:night_vision 1000000 255 true


#再表示
execute as @a[scores={var=1}] run function killerescape:config/show

#トリガーリセット
scoreboard players reset @a enableBlood_trg
scoreboard players enable @a enableBlood_trg
scoreboard players reset @a nightVision_trg
scoreboard players enable @a nightVision_trg
