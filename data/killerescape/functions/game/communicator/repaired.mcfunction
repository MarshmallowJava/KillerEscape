
##通信機が修理された場合に呼び出されます

tellraw @a {"text":"[システム] 通信機が修理されました","italic": false,"color": "yellow"}

execute as @a at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1 0

tag @s add repaired
tag @s remove can_sabotage

#イベントトリガー
function killerescape:event/on_repaired
