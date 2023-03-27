
##実行者であるロッカーが生存者を格納されている場合の処理を行います

#検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#位置を固定
tp @a[tag=current] ^ ^ ^-0.3 ~ ~

#表示
title @a[tag=current] actionbar "右クリックでロッカーから出る"
tag @a[tag=current] remove display_ui

#タグ付け
tag @a[tag=current] add hiding
