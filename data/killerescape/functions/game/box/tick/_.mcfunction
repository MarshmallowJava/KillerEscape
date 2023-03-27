
##実行者であるロッカーが生存者を格納されている場合の処理を行います

#検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#位置を固定
tp @a[tag=current] ^ ^ ^-0.3 ~ ~
effect give @a[tag=current] minecraft:slowness infinite 255 true
effect give @a[tag=current] minecraft:jump_boost infinite 129 true

#表示
title @a[tag=current] actionbar "右クリックでロッカーから出る"
tag @a[tag=current] remove display_ui

#タグ付け
tag @a[tag=current] add hiding
