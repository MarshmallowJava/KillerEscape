
##実行者であるロッカーに誰かがアクションした場合に呼び出されます

#アクション元を検索
data modify storage minecraft:killerescape arguments.UUID set from entity @e[tag=box_collision,tag=current,limit=1] interaction.player
function killerescape:util/search/

#アクション元の役職で分岐
execute if entity @a[tag=target,tag=survivor,tag=!lying,tag=!hooked] run function killerescape:game/box/act/survivor/
execute if entity @a[tag=target,tag=killer] run function killerescape:game/box/act/killer/

#例外
execute unless entity @a[tag=target] run tellraw @a {"text":"[システム][ERROR] アクション元が見つかりませんでした","italic": false,"color": "red"}

#操作拒否時間を設定
scoreboard players set @s time 20
