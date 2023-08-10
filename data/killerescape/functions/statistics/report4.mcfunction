
##ゲームの結果を保存します

#領域を初期化
data remove storage temp: _

#データを保存
execute store result storage temp: _.repaired int 1 if entity @e[tag=communicator,tag=repairable,tag=repaired]
execute store result storage temp: _.gateOpened int 1 if entity @e[tag=gate,tag=opened]
execute store result storage temp: _.eliminated int 1 if entity @a[tag=survivor,tag=eliminated]

#キャッシュに書き込み
execute store result storage minecraft:killerescape statistics.cache.gameVersion int 1 run scoreboard players get game_version const
execute store result storage minecraft:killerescape statistics.cache.map int 1 run scoreboard players get selected mapid
data modify storage minecraft:killerescape statistics.cache.gameResult set from storage temp: _
