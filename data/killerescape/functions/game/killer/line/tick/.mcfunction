
##警戒線の処理を行います

#検索
function killerescape:util/get_current

#再起
execute facing entity @e[tag=to,tag=current] feet as @e[tag=to,tag=current] run function killerescape:game/killer/line/tick/_

#効果付与
effect give @a[tag=hitten] minecraft:glowing 20 1 false
effect give @a[tag=hitten] minecraft:jump_boost 10 129 false
effect give @a[tag=hitten] minecraft:slowness 5 4 false

#表示
execute as @a[tag=hitten] run tellraw @s {"text":"[システム] 警戒線を踏んでしまった！","italic": false,"color": "red"}
execute at @a[tag=hitten] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 1 1.5 0

#削除
execute if entity @a[tag=hitten] run kill @s[type=minecraft:marker,tag=line_point,tag=current]
tag @a remove hitten
