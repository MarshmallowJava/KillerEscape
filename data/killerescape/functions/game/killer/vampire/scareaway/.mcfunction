
##追い払う処理を行います

#攻撃対象を検索
data modify storage minecraft:killerescape arguments.UUID set from entity @s attack.player
function killerescape:util/search/

#蝙蝠の調整
execute on vehicle at @s run function killerescape:game/killer/vampire/scareaway/_
execute if entity @a[tag=target,tag=killer] on vehicle run function killerescape:game/killer/vampire/vanish

#デバフ
execute as @a[tag=target,tag=survivor] at @s run function killerescape:game/killer/vampire/scareaway/__

#削除
kill @s[type=minecraft:interaction]

#通知
execute if entity @a[tag=target,tag=survivor] run tellraw @a[nbt={Inventory:[{tag:{CustomTag:Vampire}}]}] {"text":"[システム] 蝙蝠が追い払われてしまいました","color": "red"}
