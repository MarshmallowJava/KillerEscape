
##実行者である板を倒します

#当たり判定発生
fill ^ ^ ^ ^ ^ ^1 minecraft:barrier keep

#フラグ
tag @s add downed

#アニメーション開始(item_animation前提データパック必須)
scoreboard players set @s start_id 10
scoreboard players set @s end_id 25
function item_anime:start_animation/head
