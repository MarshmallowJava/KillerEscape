
##救助時の処理を行います

#検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#ダメージ値を設定
scoreboard players set @a[tag=current] damage_stage 1

#リセット
scoreboard players reset @s target_id
tag @s remove used
