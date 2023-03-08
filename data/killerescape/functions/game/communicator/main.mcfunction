
##通信機に関する処理を行います

#通信機毎の処理
execute as @e[tag=communicator,tag=current_map,tag=repairable] at @s run function killerescape:game/communicator/tick/

#修理進捗をボスバーに反映
execute store result score count var if entity @e[tag=communicator,tag=current_map,tag=repaired]
execute store result bossbar minecraft:remain value run scoreboard players get count var
execute if score count var matches ..4 run bossbar set minecraft:remain players @a
execute if score count var matches ..4 run bossbar set minecraft:remain name [{"text":"通信機 修理修理状況 ( ","italic": false,"color": "white"},{"score":{"name": "count","objective": "var"},"italic": false,"color": "white"}," /5)"]
execute if score count var matches 5.. run bossbar set minecraft:remain players @a[tag=survivor]
execute if score count var matches 5.. run bossbar set minecraft:remain2 players @a[tag=killer]
execute if score count var matches 5.. unless entity @e[tag=gate,tag=opened] run bossbar set minecraft:remain name [{"text":"ビーコンを破壊しゲートを開放してください","italic": false,"color": "white"}]
execute if score count var matches 5.. if entity @e[tag=gate,tag=opened] run bossbar set minecraft:remain name [{"text":"開放されたゲートから脱出してください","italic": false,"color": "white"}]
execute if score count var matches 5.. unless entity @e[tag=gate,tag=opened] run bossbar set minecraft:remain2 name [{"text":"ゲートを開放を阻止してください","italic": false,"color": "white"}]
execute if score count var matches 5.. if entity @e[tag=gate,tag=opened] run bossbar set minecraft:remain2 name [{"text":"生存者の脱出を阻止してください","italic": false,"color": "white"}]
