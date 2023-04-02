
##生存者プールの状態を描画します

#データ取得
execute store result score ban var run data get storage minecraft:temp temp2[0]
execute unless data storage minecraft:temp temp2[0] run scoreboard players set ban var -1

#UI用アイテムデータ生成
data remove storage minecraft:temp temp3
execute if score ban var matches 0 run data modify storage minecraft:temp temp3 set from storage minecraft:temp temp[0]
execute if score ban var matches 1 run data modify storage minecraft:temp temp3 set value {id:"minecraft:barrier",Count:1b}
execute if score ban var matches -1 run data modify storage minecraft:temp temp3 set value {id:"minecraft:gray_stained_glass_pane",tag:{display:{Name:'""'}},Count:1b}
execute if score ban var matches 0.. run data modify storage minecraft:temp temp3.tag.display.Name set from storage minecraft:temp temp[0].tag.display.Name
execute if score ban var matches 0.. run data modify storage minecraft:temp temp3.tag.display.Lore set from storage minecraft:temp temp[0].tag.display.Lore
data modify storage minecraft:temp temp3.tag.CustomTag set value Icon
execute store result storage minecraft:temp temp3.Slot byte 1 run scoreboard players get slot var

#追加
data modify block ~ ~ ~ Items append from storage minecraft:temp temp3

#スロット移動
scoreboard players add slot var 1
data remove storage minecraft:temp temp[0]
data remove storage minecraft:temp temp2[0]

#再帰呼び出し
scoreboard players remove count var 1
execute if score count var matches 1.. run function killerescape:config/ban/paint/__
