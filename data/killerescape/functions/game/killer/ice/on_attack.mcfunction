
##攻撃が命中したときの処理を行います

#1段階を攻撃(0.5秒延長)
execute if score ice var matches 20.. run scoreboard players add @s ice_time 10

#2段階を攻撃(1.5秒延長)
execute if score ice var matches 40.. run scoreboard players add @s ice_time 20

#3段階を攻撃(3.0秒延長)
execute if score ice var matches 60.. run scoreboard players add @s ice_time 30
