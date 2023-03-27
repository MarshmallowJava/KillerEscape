
##実行者であるロッカーを開きます

#アニメーション設定
scoreboard players set @s start_id 40
scoreboard players set @s end_id 65
function item_anime:start_animation/head

#サウンド
playsound minecraft:block.wooden_door.open master @a ~ ~ ~ 1 0.75 0
