
##実行者であるロッカーが生存者を格納されている場合の処理を行います

#検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#位置を固定
execute as @a[tag=current] rotated as @s run tp @s ^ ^ ^ ~ ~
effect give @a[tag=current] minecraft:slowness infinite 255 true
effect give @a[tag=current] minecraft:jump_boost infinite 129 true

#スタミナ回復速度バフ付与
scoreboard players add @a[tag=current] stamina_regen 5

#表示
title @a[tag=current] actionbar "右クリックでロッカーから出る"
tag @a[tag=current] remove display_ui

#タグ付け
tag @a[tag=current] add hiding

#非表示
execute unless score @a[tag=killer,limit=1] box_id = @s entity_id run effect give @a[tag=current] minecraft:invisibility 1 0 true
execute if score @a[tag=killer,limit=1] box_id = @s entity_id run effect clear @a[tag=current] minecraft:invisibility
