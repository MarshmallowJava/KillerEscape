
##実行者であるロッカーを開きます

#検索
function killerescape:util/get_current

#アニメーション設定
scoreboard players set @e[tag=box_display,tag=current] start_id 40
scoreboard players set @e[tag=box_display,tag=current] end_id 65
execute as @e[tag=box_display,tag=current] run function item_anime:start_animation/display

#サウンド
playsound minecraft:block.wooden_door.open master @a ~ ~ ~ 1 0.75 0
