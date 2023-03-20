
#進行
scoreboard players add @s skillcheck_time 1

#サウンド
execute if score @s skillcheck_time matches 10 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 0
execute if score @s skillcheck_time matches 20 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 0
execute if score @s skillcheck_time matches 30 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 0

#乱数
execute if score @s skillcheck_time matches 31 run scoreboard players set bound value 2
execute if score @s skillcheck_time matches 31 run function random:next
execute if score @s skillcheck_time matches 31 run scoreboard players operation @s skillcheck_ans = result value

#表示
execute if score @s skillcheck_time matches 40.. run title @s[scores={skillcheck_ans=0}] actionbar {"translate":"%s押さないでください","italic": false,"color": "yellow","with":[{"translate":"%sキーを","italic": false,"color": "white","with":[{"keybind":"key.swapOffhand"}]}]}
execute if score @s skillcheck_time matches 40.. run title @s[scores={skillcheck_ans=1}] actionbar {"translate":"%s押してください","italic": false,"color": "red","with":[{"translate":"%sキーを","italic": false,"color": "white","with":[{"keybind":"key.swapOffhand"}]}]}
execute if score @s skillcheck_time matches 40.. run tag @s remove display_ui

#判定
execute if score @s skillcheck_time matches 40.. if score @s skillcheck_ans matches 0 if entity @s[tag=offhand_action] run function killerescape:game/skillcheck/fail
execute if score @s skillcheck_time matches 40.. if score @s skillcheck_ans matches 1 if entity @s[tag=offhand_action] run function killerescape:game/skillcheck/success
execute if score @s skillcheck_time matches 50 if score @s skillcheck_ans matches 0 unless entity @s[tag=offhand_action] run function killerescape:game/skillcheck/success
execute if score @s skillcheck_time matches 50 if score @s skillcheck_ans matches 1 unless entity @s[tag=offhand_action] run function killerescape:game/skillcheck/fail
