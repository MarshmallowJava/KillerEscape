
##効果を解除します

#演出
execute if score @s ice_time matches 20.. run particle minecraft:block minecraft:ice ~ ~1 ~ 0 0 0 1 50 force @a
execute if score @s ice_time matches 20.. run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1 0

#エフェクト解除
execute if score @s ice_time matches 20.. run effect clear @s minecraft:slowness
execute if score @s ice_time matches 20.. run effect clear @s minecraft:jump_boost

#パッシブ
scoreboard players operation ice var = @s ice_time
execute if score ice var matches 1.. at @s as @a[tag=killer,limit=1,sort=nearest] at @s run function killerescape:game/killer/ice/on_attack

#進捗リセット
scoreboard players set @s ice_time 0
