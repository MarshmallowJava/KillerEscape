
##自動BANの状態を切り替えます

#切り替え
scoreboard players add autoban const 1
scoreboard players operation autoban const %= #2 const

#フラグ
tag @a add button_clicked
