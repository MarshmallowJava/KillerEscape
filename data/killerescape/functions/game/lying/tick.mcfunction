
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

#医療キットのみは使用を許可する
execute if entity @s[nbt={SelectedItem:{tag:{CustomTag:RescueKit}}}] at @s run function killerescape:game/item/rescue_kit/tick
execute unless entity @s[nbt={SelectedItem:{tag:{CustomTag:RescueKit}}}] run title @s actionbar {"text":"医療キットで治療してください","italic": false,"color": "red"}

#通常UIは表示しない
tag @s remove display_ui
