
##実行者を這いずり状態にします

#検索
function killerescape:util/get_current

#いなかった場合、新しく生成する
execute unless entity @e[tag=current,tag=pressure] run summon minecraft:armor_stand ~ ~1.0 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["pressure","current"],Passengers:[{id:"minecraft:shulker",Tags:["pressure_shulker","current"],NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,ShowParticles:0b,Duration:2147483647}]}]}
scoreboard players operation @e[tag=current] entity_id = @s entity_id

#テレポート
execute at @s run tp @e[tag=current,tag=pressure] ~ ~1.0 ~

#削除しないように
tag @e[tag=current,tag=pressure] add still_alive
tag @e[tag=current,tag=pressure_shulker] add still_alive
