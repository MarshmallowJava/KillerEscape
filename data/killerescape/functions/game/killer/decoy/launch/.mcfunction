
##チャージ

#チャージ
scoreboard players add @s decoy_time 1

#発動
execute if score @s decoy_time > decoy_time const run function killerescape:game/killer/decoy/launch/_

#進捗
function killerescape:game/killer/decoy/progress

#通常UIは表示しない
tag @s remove display_ui
