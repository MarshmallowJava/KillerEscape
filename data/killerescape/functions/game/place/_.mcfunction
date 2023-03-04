
##パップ固有チェストの再配置を選択します

#チェストを設置
execute as @e[tag=current_map,tag=chest,tag=!placed,limit=1,sort=random] at @s run function killerescape:game/place/__

scoreboard players remove count var 1
execute if score count var matches 1.. run function killerescape:game/place/_
