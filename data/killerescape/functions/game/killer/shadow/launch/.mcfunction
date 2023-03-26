
##影鬼の能力の発動に関する処理を行います

#発動不可
#通常UIは表示しない
execute if block ^ ^ ^1 #killerescape:see_through run title @s[tag=display_ui] actionbar {"text":"能力は壁越しのみ発動できます","italic": false,"color": "red"}
execute if block ^ ^ ^1 #killerescape:see_through run tag @s remove display_ui

#発動可能
execute unless block ^ ^ ^1 #killerescape:see_through if entity @s[tag=display_ui,scores={useItem=1..}] run function killerescape:game/killer/shadow/launch/_
