
##通信機が修理された場合に呼び出されます

#表示
tellraw @a {"text":"[システム] 通信機が修理されました","italic": false,"color": "yellow"}

#サウンド
execute as @a at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1 0

#タグを削除
tag @s add repaired
tag @s remove can_sabotage

#発光を削除
data modify entity @s Glowing set value 0b

#イベントトリガー
function killerescape:event/on_repaired
