
##通信機が修理された場合に呼び出されます

tellraw @a {"text":"[システム] 通信機が修理されました","italic": false,"color": "yellow"}

execute as @a at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1 0

tag @s add repaired
tag @s remove can_sabotage

#ボスバー処理
execute store result score count var if entity @e[tag=communicator,tag=current_map,tag=repaired]
execute if score count var matches 5.. run bossbar set minecraft:remain players @a[tag=survivor]
execute if score count var matches 5.. run bossbar set minecraft:remain2 players @a[tag=killer]

#イベントトリガー
function killerescape:event/on_repaired
