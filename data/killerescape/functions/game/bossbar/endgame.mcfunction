
##エンドゲームのアナウンスを行います

#残り時間計算
execute store result storage minecraft:killerescape arguments.tick int 1 run scoreboard players get endgame time
function killerescape:util/format_time

#情報を更新
execute store result bossbar minecraft:remain max run scoreboard players get endgametime const
execute store result bossbar minecraft:remain2 max run scoreboard players get endgametime const
execute store result bossbar minecraft:remain value run scoreboard players get endgame time
execute store result bossbar minecraft:remain2 value run scoreboard players get endgame time
execute run bossbar set minecraft:remain name [{"text":"強制終了まで ","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]
execute run bossbar set minecraft:remain2 name [{"text":"強制終了まで ","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]
