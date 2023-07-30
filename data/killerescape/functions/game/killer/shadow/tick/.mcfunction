
##能力ごとの処理を行います

#範囲表示
particle minecraft:dust_color_transition 0.25 0 0.25 1.5 0 0 0 ~ ~ ~ 1.2 0 1.2 1 10 force @a

#条件分岐
execute if entity @s[tag=pre,tag=!sub] run function killerescape:game/killer/shadow/tick/_
execute if entity @s[tag=pre,tag=sub] run function killerescape:game/killer/shadow/tick/____
execute unless entity @s[tag=pre] run function killerescape:game/killer/shadow/tick/__
