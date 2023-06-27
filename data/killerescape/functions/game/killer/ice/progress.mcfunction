
##氷鬼の冷気の表示用データを作成する

#ゲージ作成
data modify storage minecraft:killerescape arguments set value {length:10}
execute store result storage minecraft:killerescape arguments.value int 1 run scoreboard players get @s ice_time
execute store result storage minecraft:killerescape arguments.max int 1 run scoreboard players get ice_maxtoken const
data modify storage minecraft:killerescape arguments.format set from storage minecraft:killerescape formats.ice
function killerescape:util/get_gauge/
