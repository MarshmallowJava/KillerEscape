
##スニーク時処理を行います

#検索
execute store result score count var if entity @e[tag=vampire_point]
function killerescape:game/killer/vampire/choose/

#移動開始
execute if score count var matches 1.. if score @s useItem matches 1 run function killerescape:game/killer/vampire/launch/_

#選択画面
effect give @s minecraft:blindness 2 0 true
execute anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[tag=vampire_point,tag=selected] eyes run particle minecraft:dust 1 0 0 0.5 ^ ^ ^1 0 0 0 0 0 force @a
execute anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[tag=vampire_point,tag=!selected] eyes run particle minecraft:dust 1 1 1 0.5 ^ ^ ^1 0 0 0 0 0 force @a
tag @e[tag=vampire_point,tag=selected] remove selected

#表示
execute if score count var matches 0 run title @s actionbar {"text":"ポイントは設置されていません","italic": false,"color": "red"}
execute if score count var matches 1.. run title @s actionbar {"translate":"右クリックで移動開始","italic": false,"color": "white"}

#通常UIは表示しない
tag @s remove display_ui
