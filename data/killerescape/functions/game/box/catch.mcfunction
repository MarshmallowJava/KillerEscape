
##ロッカーの中にいる生存者を捕まえます

#背負う
scoreboard players operation target entity_id = @e[tag=box,tag=current] target_id
function killerescape:game/carryon/create

#ロッカーから引き剥がす
scoreboard players reset @e[tag=box,tag=current] target_id
