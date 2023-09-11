
##残り時間を表示します

#計算
scoreboard players operation remain var = @s prevent_cure
scoreboard players operation sec var = remain var
scoreboard players operation mili var = remain var
scoreboard players operation sec var /= #20 const
scoreboard players operation mili var %= #20 const
scoreboard players operation mili var /= #2 const

#表示
execute if score sec var matches 10.. run title @s[tag=display_ui] actionbar {"translate":"%s(%s)","with":[{"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret":true},{"translate":"回復不可 残り%s秒","color":"light_purple","with":[{"score":{"name":"sec","objective":"var"}}]}]}
execute if score sec var matches ..9 run title @s[tag=display_ui] actionbar {"translate":"%s(%s)","with":[{"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret":true},{"translate":"回復不可 残り%s.%s秒","color":"light_purple","with":[{"score":{"name":"sec","objective":"var"}},{"score":{"name":"mili","objective":"var"}}]}]}

#通常UIは表示しない
tag @s remove display_ui
