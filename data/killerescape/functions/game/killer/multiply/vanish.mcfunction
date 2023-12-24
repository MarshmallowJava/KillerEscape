
##実行者である眷属を削除します

#検索
function killerescape:util/get_current

#残存眷属数を数える
execute store result score count var if entity @e[tag=multiply,type=minecraft:wandering_trader]

#他に眷属が存在するなら他に移動する
execute if score count var matches 2.. if entity @s[tag=hassoul] as @e[tag=multiply,type=minecraft:wandering_trader,limit=1,sort=random,distance=0.1..] at @s run function killerescape:game/killer/multiply/launch/___

#最後の一つなら回収
execute if score count var matches 1 if entity @s[tag=hassoul] run loot give @a[tag=killer] loot killerescape:soul
execute if score count var matches 1 if entity @s[tag=hassoul] run tellraw @a[tag=killer] {"text":"[システム] タマシイを回収しました","color": "yellow"}

#演出
particle minecraft:witch ~ ~1 ~ 0.6 0.7 0.6 0 50 force @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.25 0

#削除
tp @e[type=minecraft:zombie,tag=current] ~ ~-1000 ~
tp @s ~ ~-1000 ~
kill @e[type=minecraft:interaction,tag=current]
kill @e[type=minecraft:zombie,tag=current]
kill @s[type=minecraft:wandering_trader]
