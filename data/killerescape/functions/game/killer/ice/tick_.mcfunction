
##生存者毎の処理を行います

#進捗
scoreboard players remove @s[tag=!watched_by_ice] ice_time 2
scoreboard players add @s[tag=watched_by_ice] ice_time 1
scoreboard players operation @s ice_time > #0 const
scoreboard players operation @s ice_time < #100 const

#効果
effect give @s[scores={ice_time=20..39}] minecraft:slowness 1 0 false
effect give @s[scores={ice_time=40..59}] minecraft:slowness 1 1 false
effect give @s[scores={ice_time=60..}] minecraft:slowness 1 2 false
effect give @s[scores={ice_time=50..}] minecraft:jump_boost 1 129 false

#パーティクル
execute if score @s ice_time matches 50.. run particle minecraft:snowflake ~ ~0.5 ~ 0.3 0.2 0.3 0 1 force @a
