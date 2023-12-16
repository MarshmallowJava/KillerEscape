
##能力ごとの処理を行います

#範囲表示
execute if entity @s[tag=pre] run particle minecraft:dust_color_transition 0.25 0 0.25 1.5 0 0 0 ~ ~ ~ 1.2 0 1.2 1 5 force @a[tag=killer]
execute if entity @s[tag=!pre] run particle minecraft:dust_color_transition 0.25 0 0.25 1.5 0 0 0 ~ ~ ~ 1.2 0 1.2 1 5 force @a

#鈍足効果
effect give @a[tag=survivor,tag=!eliminated,distance=..1.5] minecraft:slowness 1 2 true

#条件分岐
execute if entity @s[tag=pre,tag=!sub] at @s run function killerescape:game/killer/shadow/tick/_
execute if entity @s[tag=pre,tag=!sub] at @s run function killerescape:game/killer/shadow/tick/_
execute if entity @s[tag=pre,tag=sub] run function killerescape:game/killer/shadow/tick/____
execute unless entity @s[tag=pre] run function killerescape:game/killer/shadow/tick/__
