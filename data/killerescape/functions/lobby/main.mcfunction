
##ゲーム開始前までの処理を行います

#カウントダウン処理
execute if score countdown time matches 0.. run function killerescape:lobby/countdown

#ランダムプール設定
function killerescape:config/ban/main

#シェーダーエフェクト警告
execute as @a[scores={shaderEffects=1}] at @s run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 0 force @s

#死なない努力
effect give @a minecraft:saturation infinite 10 true
effect give @a minecraft:instant_health 1 10 true
