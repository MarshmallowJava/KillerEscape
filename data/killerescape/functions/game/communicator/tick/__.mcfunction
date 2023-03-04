
##進捗バーの更新を行います
##紐づけされた進捗バーをすでに検索されたものとして実行します

#ゲージ作成
data modify storage minecraft:killerescape arguments set value {length:20}
execute store result storage minecraft:killerescape arguments.value int 1 run scoreboard players get @s time
execute store result storage minecraft:killerescape arguments.max int 1 run scoreboard players get repairtime const
data modify storage minecraft:killerescape arguments.format set from storage minecraft:killerescape formats.survivor
function killerescape:util/get_gauge/

#反映
data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set from storage minecraft:killerescape result

# #進捗を20でスケーリング
# scoreboard players set progress var 20
# scoreboard players operation progress var *= @s time
# scoreboard players operation progress var /= repairtime const

# #ゲージ反映
# execute if score progress var matches 0 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"","italic":false,"color":"green"},{"text":"||||||||||||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 1 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|","italic":false,"color":"green"},{"text":"|||||||||||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 2 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||","italic":false,"color":"green"},{"text":"||||||||||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 3 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|||","italic":false,"color":"green"},{"text":"|||||||||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 4 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||||","italic":false,"color":"green"},{"text":"||||||||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 5 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|||||","italic":false,"color":"green"},{"text":"|||||||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 6 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||||||","italic":false,"color":"green"},{"text":"||||||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 7 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|||||||","italic":false,"color":"green"},{"text":"|||||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 8 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||||||||","italic":false,"color":"green"},{"text":"||||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 9 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|||||||||","italic":false,"color":"green"},{"text":"|||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 10 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||||||||||","italic":false,"color":"green"},{"text":"||||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 11 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|||||||||||","italic":false,"color":"green"},{"text":"|||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 12 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||||||||||||","italic":false,"color":"green"},{"text":"||||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 13 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|||||||||||||","italic":false,"color":"green"},{"text":"|||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 14 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||||||||||||||","italic":false,"color":"green"},{"text":"||||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 15 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|||||||||||||||","italic":false,"color":"green"},{"text":"|||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 16 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||||||||||||||||","italic":false,"color":"green"},{"text":"||||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 17 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|||||||||||||||||","italic":false,"color":"green"},{"text":"|||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 18 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||||||||||||||||||","italic":false,"color":"green"},{"text":"||","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 19 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"|||||||||||||||||||","italic":false,"color":"green"},{"text":"|","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
# execute if score progress var matches 20 run data modify entity @e[tag=repair_progress,tag=current,limit=1] CustomName set value '[{"text":"[","italic":false,"color":"white"},{"text":"||||||||||||||||||||","italic":false,"color":"yellow"},{"text":"","italic":false,"color":"gray"},{"text":"]","italic":false,"color":"white"}]'
