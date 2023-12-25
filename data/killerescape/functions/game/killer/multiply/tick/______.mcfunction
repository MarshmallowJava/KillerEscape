
##タマシイの処理を行います

#対象を検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#移動
execute facing entity @e[type=minecraft:wandering_trader,tag=current] feet positioned ^ ^ ^2 rotated as @s run tp @s ~ ~ ~ ~ ~

#接触
execute as @e[type=minecraft:wandering_trader,tag=current,distance=..2] at @s run function killerescape:game/killer/multiply/launch/___
execute if entity @e[type=minecraft:wandering_trader,tag=current,distance=..2] run kill @s[type=minecraft:marker]

#対象が消滅した場合
execute unless entity @e[tag=current] run loot give @a[tag=killer] loot killerescape:soul
execute unless entity @e[tag=current] run tellraw @a[tag=killer] {"text":"[システム] タマシイを回収しました","color":"yellow"}
execute unless entity @e[tag=current] run kill @s[type=minecraft:marker]

#演出
particle minecraft:soul ~ ~1 ~ 0 0 0 0 1 force @a[distance=..8]
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0 1 force @a[distance=..8]
