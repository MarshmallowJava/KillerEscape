
##コンテナの処理を行います

#タマシイ持ち判定
execute store result score @s var on vehicle if entity @s[tag=hassoul]

#アクション元を検索
data modify storage minecraft:killerescape arguments.UUID set from entity @s interaction.player
function killerescape:util/search/

#消費
execute if score @s var matches 0 if entity @a[tag=target,nbt={SelectedItem:{tag:{CustomTag:Soul}}}] on vehicle at @s run function killerescape:game/killer/multiply/launch/___
execute if score @s var matches 0 run clear @a[tag=target,nbt={SelectedItem:{tag:{CustomTag:Soul}}}] minecraft:clock{CustomTag:Soul} 1

#回収
execute if score @s var matches 1 if entity @a[tag=target,tag=killer] on vehicle at @s run function killerescape:game/killer/multiply/launch/____
execute if score @s var matches 1 run loot give @a[tag=target,tag=killer] loot killerescape:soul

#キャッシュ削除
data remove entity @s interaction
