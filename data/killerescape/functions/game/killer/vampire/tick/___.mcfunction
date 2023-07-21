
##移動中の処理を行います

#検索
function killerescape:util/get_current

#観戦
gamemode spectator @a[tag=current]
spectate @s @a[limit=1,tag=current]

#表示
title @a[tag=current] actionbar "移動しています..."

#通常UIは表示しない
tag @a[tag=current] remove display_ui

#検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#タグ付与
tag @e[tag=current] add vampire_target

#移動処理
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____
execute at @s[tag=!finished] run function killerescape:game/killer/vampire/tick/____

#終了
execute at @s[tag=finished] run function killerescape:game/killer/vampire/release

#タグ削除
tag @e remove vampire_target
