
##生存者毎の処理を行います

#進捗
scoreboard players operation @s[tag=watched_by_ice] cool_ice = ice_remain const
scoreboard players add @s[tag=watched_by_ice] ice_time 1
scoreboard players remove @s[tag=!watched_by_ice,scores={cool_ice=1..}] cool_ice 1
scoreboard players remove @s[tag=!watched_by_ice,scores={cool_ice=0}] ice_time 1
scoreboard players operation @s ice_time > #0 const
scoreboard players operation @s ice_time < #100 const

#効果
effect give @s[scores={ice_time=20..39}] minecraft:slowness 1 0 false
effect give @s[scores={ice_time=40..59}] minecraft:slowness 1 1 false
effect give @s[scores={ice_time=60..}] minecraft:slowness 1 2 false
effect give @s[scores={ice_time=50..}] minecraft:jump_boost 1 129 false

#パーティクル
execute if score @s ice_time matches 50.. run particle minecraft:snowflake ~ ~0.5 ~ 0.3 0.2 0.3 0 1 force @a

#表示
execute if score @s[tag=watched_by_ice] ice_time matches 1..49 run title @s[tag=display_ui] actionbar {"translate":"%s: 移動速度低下","italic": false,"color": "red","with":[{"text":"体温低下中","italic": false,"color": "aqua"}]}
execute if score @s[tag=!watched_by_ice] ice_time matches 1..49 run title @s[tag=display_ui] actionbar {"translate":"%s: 移動速度低下","italic": false,"color": "red","with":[{"text":"体温上昇中","italic": false,"color": "gold"}]}
execute if score @s[tag=watched_by_ice] ice_time matches 50.. run title @s[tag=display_ui] actionbar {"translate":"%s: 移動速度低下 ジャンプ不可","italic": false,"color": "red","with":[{"text":"体温低下中","italic": false,"color": "aqua"}]}
execute if score @s[tag=!watched_by_ice] ice_time matches 50.. run title @s[tag=display_ui] actionbar {"translate":"%s: 移動速度低下 ジャンプ不可","italic": false,"color": "red","with":[{"text":"体温上昇中","italic": false,"color": "gold"}]}
tag @s[scores={ice_time=1..}] remove display_ui

#タグ削除
tag @s remove watched_by_ice

#シェーダーエフェクト
execute if score @s[scores={shaderEffects=1}] ice_time matches 1.. run particle minecraft:dust 0 100000000 0 0 ~ ~ ~ 0 0 0 0 0 force @s
