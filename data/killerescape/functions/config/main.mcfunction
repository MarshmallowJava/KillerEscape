
##コンフィグに関する処理を行います

#初期値
execute as @a unless score @s enableBlood matches -2147483648..2147483647 run scoreboard players set @s enableBlood 1
execute as @a unless score @s nightVision matches -2147483648..2147483647 run scoreboard players set @s nightVision 0
execute as @a unless score @s gaugeType matches -2147483648..2147483647 run scoreboard players set @s gaugeType 0

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
effect give @a[scores={nightVision=1}] minecraft:night_vision infinite 255 true

#ゲージタイプ
scoreboard players set @a[scores={gaugeType_trg=1}] var 1
scoreboard players add @a[scores={gaugeType_trg=1}] gaugeType 1
scoreboard players operation @a[scores={gaugeType_trg=1}] gaugeType %= #3 const

#プレリリース
scoreboard players set @a[scores={prerelease_trg=1}] var 1
execute if entity @a[scores={prerelease_trg=1}] run scoreboard players add prerelease const 1
execute if entity @a[scores={prerelease_trg=1}] run scoreboard players operation prerelease const %= #2 const
execute if entity @a[scores={prerelease_trg=1}] run schedule function killerescape:config/reload 1t append

#再表示
execute as @a[scores={var=1}] run function killerescape:config/show

#トリガーリセット
scoreboard players reset @a enableBlood_trg
scoreboard players enable @a enableBlood_trg
scoreboard players reset @a nightVision_trg
scoreboard players enable @a nightVision_trg
scoreboard players reset @a prerelease_trg
scoreboard players reset @a gaugeType_trg
scoreboard players enable @a gaugeType_trg
