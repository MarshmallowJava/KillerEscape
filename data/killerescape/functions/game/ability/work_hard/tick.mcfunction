
##効果の処理を行います

#治療対象が自身である場合
execute if entity @s[tag=target] run scoreboard players add @a[tag=target] rescuekit_time 1

#治療対象が他人である場合
execute unless entity @s[tag=target] run scoreboard players add @a[tag=target] rescuekit_time 2
