
##非スニーク時の処理を行います

#設置
execute if score @s vampire_count matches 1.. if score @s useItem matches 1 run function killerescape:game/killer/vampire/launch/

#選択画面
effect clear @s minecraft:blindness

#表示
# execute if score @s vampire_count matches 0 run title @s actionbar {"text":"生存者を攻撃してストックを獲得してください","italic": false,"color": "red"}
# execute if score @s vampire_count matches 1.. run title @s actionbar {"translate":"右クリックでストックを設置 (所持数: %s個)","italic": false,"color": "white","with":[{"score":{"name":"@s","objective": "vampire_count"}}]}
function killerescape:game/killer/vampire/display
