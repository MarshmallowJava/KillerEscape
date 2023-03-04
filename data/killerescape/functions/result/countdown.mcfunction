
##カウントダウンの処理を行います

#カウントダウン値を加算
scoreboard players add result time 1

#ゲーム開始時処理
execute if score result time matches 200.. run function killerescape:lobby/start
execute if score result time matches 200.. run scoreboard players reset result time
