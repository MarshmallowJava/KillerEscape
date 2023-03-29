
##実行者であるロッカーを開きます
##現時点(3/29)では、アニメーション挙動に同梱のitem_animation_lightmodelのバージョンが0.2である必要があります
##item_animation_lightmodelデータパックのgithubリポジトリは存在しないため、onedrive上のワールドデータからコピーしてください
##ただしアニメーションの状態はゲーム処理に依存しないため、バージョン更新は必須ではありません

#検索
function killerescape:util/get_current

#アニメーション設定
scoreboard players set @e[tag=box_display,tag=current] start_id 40
scoreboard players set @e[tag=box_display,tag=current] end_id 65
execute as @e[tag=box_display,tag=current] run function item_anime:start_animation/display

#サウンド
playsound minecraft:block.wooden_door.open master @a ~ ~ ~ 1 0.75 0
