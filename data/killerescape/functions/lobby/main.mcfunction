
##ゲーム開始前までの処理を行います

#カウントダウン処理
execute if score countdown time matches 0.. run function killerescape:lobby/countdown

#死なない努力
effect give @a minecraft:saturation infinite 10 true
