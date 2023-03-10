
##デバッグに関する処理を行います

#ゲーム状態を表示
execute if score game_status time matches -1 run title @a actionbar "ゲーム状態: デモ"
execute if score game_status time matches 0 run title @a actionbar "ゲーム状態: ロビー"
execute if score game_status time matches 1 run title @a actionbar "ゲーム状態: ゲーム"
execute if score game_status time matches 2 run title @a actionbar "ゲーム状態: リザルト"

#現在編集中のマップの固有エンティティを取得
scoreboard players operation current mapid = editing mapid
function killerescape:util/get_mapentities

#通信機の位置に柱を立てる
execute at @e[tag=communicator,tag=current_map] run particle minecraft:wax_off ~ ~ ~ 0 10 0 0 3 force @a
execute at @e[tag=spawn_survivor,tag=current_map] run particle minecraft:dust 0 1 0 1 ~ ~ ~ 0 10 0 0 3 force @a
execute at @e[tag=spawn_killer,tag=current_map] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 10 0 0 3 force @a
execute at @e[tag=chest,tag=current_map] run particle minecraft:happy_villager ~ ~ ~ 0 10 0 0 3 force @a
execute at @e[tag=hook,tag=current_map] run particle minecraft:witch ~ ~ ~ 0 10 0 0 3 force @a
execute at @e[tag=board,tag=current_map] run particle minecraft:angry_villager ~ ~ ~ 0 10 0 0 3 force @a
execute at @e[tag=gate,tag=current_map] run particle minecraft:wax_on ~ ~ ~ 0 10 0 0 3 force @a

#通常UIを表示しないように
tag @a remove display_ui
