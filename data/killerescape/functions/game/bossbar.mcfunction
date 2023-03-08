
##ゲームのアナウンスを行います

#残り時間計算
execute store result storage minecraft:killerescape arguments.tick int 1 run scoreboard players get endgame time
function killerescape:util/format_time

#修理進捗をボスバーに反映
execute store result score count var if entity @e[tag=communicator,tag=current_map,tag=repaired]
execute store result bossbar minecraft:remain value run scoreboard players get count var
execute if score count var matches ..4 run bossbar set minecraft:remain players @a
execute if score count var matches ..4 run bossbar set minecraft:remain name [{"text":"通信機 修理修理状況 ( ","italic": false,"color": "white"},{"score":{"name": "count","objective": "var"},"italic": false,"color": "white"}," /5)"]
execute if score count var matches 5.. run bossbar set minecraft:remain players @a[tag=survivor]
execute if score count var matches 5.. run bossbar set minecraft:remain2 players @a[tag=killer]
execute if score count var matches 5.. unless entity @e[tag=gate,tag=opened] run bossbar set minecraft:remain name [{"text":"ビーコンを破壊しゲートを開放してください","italic": false,"color": "white"}]
execute if score count var matches 5.. unless entity @e[tag=gate,tag=opened] run bossbar set minecraft:remain2 name [{"text":"ゲートを開放を阻止してください","italic": false,"color": "white"}]
execute if score count var matches 5.. if entity @e[tag=gate,tag=opened] store result bossbar minecraft:remain max run scoreboard players get endgametime const
execute if score count var matches 5.. if entity @e[tag=gate,tag=opened] store result bossbar minecraft:remain2 max run scoreboard players get endgametime const
execute if score count var matches 5.. if entity @e[tag=gate,tag=opened] store result bossbar minecraft:remain value run scoreboard players get endgame time
execute if score count var matches 5.. if entity @e[tag=gate,tag=opened] store result bossbar minecraft:remain2 value run scoreboard players get endgame time
execute if score count var matches 5.. if entity @e[tag=gate,tag=opened] run bossbar set minecraft:remain name [{"text":"制限時間以内にゲートから脱出してください 残り時間 ","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]
execute if score count var matches 5.. if entity @e[tag=gate,tag=opened] run bossbar set minecraft:remain2 name [{"text":"制限時間まで生存者の脱出を阻止してください 残り時間 ","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]
