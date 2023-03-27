
##ロッカーの中にいる生存者を捕まえます

#ロッカーから引き剥がす
scoreboard players operation target entity_id = @e[tag=box,tag=current] target_id
scoreboard players reset @e[tag=box,tag=current] target_id

#背負う
function killerescape:game/carryon/create
