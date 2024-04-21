
##探索フェーズの処理を行います

#残り時間減少
scoreboard players remove donothing time 1

#ボスバー反映
scoreboard players operation min var = donothing time
scoreboard players operation min var /= #20 const
scoreboard players operation min var /= #60 const
scoreboard players operation sec var = donothing time
scoreboard players operation sec var /= #20 const
scoreboard players operation sec var %= #60 const
execute if score sec var matches 0..9 run bossbar set minecraft:remain name {"translate": "ゲーム開始まで %s:0%s", "with":[{"score":{"name":"min","objective":"var"}},{"score":{"name":"sec","objective":"var"}}]}
execute if score sec var matches 10.. run bossbar set minecraft:remain name {"translate": "ゲーム開始まで %s:%s", "with":[{"score":{"name":"min","objective":"var"}},{"score":{"name":"sec","objective":"var"}}]}
execute store result bossbar minecraft:remain value run scoreboard players get donothing time

#通知
execute if score donothing time matches 200 run tellraw @a {"text":"[システム] 間もなくゲームが開始されます", "color":"yellow"}

#ゲーム開始
execute if score donothing time matches ..0 run function killerescape:game/start
