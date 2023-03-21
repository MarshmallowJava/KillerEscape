
##繰り返し部分の処理を行います

#条件分岐
execute if entity @s[tag=anchored] run function killerescape:game/killer/fishing/tick/___
execute unless entity @s[tag=anchored] run function killerescape:game/killer/fishing/tick/__

#通行不可の場合、削除
execute at @s unless block ~ ~ ~ #killerescape:see_through run function killerescape:game/killer/fishing/remove
