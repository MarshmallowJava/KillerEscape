
##能力ごとの処理を行います

#範囲表示
particle minecraft:dust_color_transition 0.5 0 0.5 1.5 0 0 0 ~ ~ ~ 1.2 0 1.2 1 20 force @a

#条件分岐
execute if entity @s[tag=pre] run function killerescape:game/killer/shadow/tick/_
execute unless entity @s[tag=pre] run function killerescape:game/killer/shadow/tick/__
