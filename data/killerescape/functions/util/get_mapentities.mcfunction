
##current[mapid]に設定されているマップ固有のエンティティに[current_map]タグを付与します
##特に指定がない場合は現在選択されているマップのものを対象とします

#特に指定がなかった場合、現在選択されているマップのIDを使用
execute unless score current mapid matches -2147483648..2147483647 run scoreboard players operation current mapid = selected mapid

#検索
tag @e remove current_map
execute as @e if score @s mapid = current mapid run tag @s add current_map

#スコアリセット
scoreboard players reset current mapid
