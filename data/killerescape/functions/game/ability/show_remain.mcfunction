
##remain varに格納された時間を残り時間としてアクションバーに表示します

#計算
scoreboard players operation sec var = remain var
scoreboard players operation mili var = remain var
scoreboard players operation sec var /= #20 const
scoreboard players operation mili var %= #20 const
scoreboard players operation mili var /= #2 const

#表示
execute if score sec var matches 0..9 run title @s actionbar ["クールダウン残り ",{"score":{"name":"sec","objective": "var"}},".",{"score":{"name":"mili","objective": "var"}},"秒"]
execute if score sec var matches 10.. run title @s actionbar ["クールダウン残り ",{"score":{"name":"sec","objective": "var"}},"秒"]
