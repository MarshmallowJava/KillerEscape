
##各処理を行います

#条件分岐
execute if entity @s[tag=!mode_choose] run function killerescape:game/killer/vampire/tick/__
execute if entity @s[tag=mode_choose] run function killerescape:game/killer/vampire/tick/___

#モードシフト
execute store result score @s var if entity @s[tag=mode_choose]
scoreboard players add @s[tag=offhand_action] var 1
scoreboard players operation @s var %= #2 const
execute if score @s var matches 0 run tag @s remove mode_choose
execute if score @s var matches 1 run tag @s add mode_choose
