
##クリックされた時に呼び出されます

scoreboard players set slot var -1
execute unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set slot var 0
execute unless data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players set slot var 1
execute unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set slot var 2
execute unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set slot var 3
execute unless data block ~ ~ ~ Items[{Slot:5b}] run scoreboard players set slot var 4
execute unless data block ~ ~ ~ Items[{Slot:6b}] run scoreboard players set slot var 5
execute unless data block ~ ~ ~ Items[{Slot:7b}] run scoreboard players set slot var 6
execute if score slot var matches 0.. run function killerescape:config/ban/launch/_

scoreboard players set slot var -1
execute unless data block ~ ~ ~ Items[{Slot:10b}] run scoreboard players set slot var 0
execute unless data block ~ ~ ~ Items[{Slot:11b}] run scoreboard players set slot var 1
execute unless data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players set slot var 2
execute unless data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players set slot var 3
execute unless data block ~ ~ ~ Items[{Slot:14b}] run scoreboard players set slot var 4
execute unless data block ~ ~ ~ Items[{Slot:15b}] run scoreboard players set slot var 5
execute unless data block ~ ~ ~ Items[{Slot:16b}] run scoreboard players set slot var 6
execute unless data block ~ ~ ~ Items[{Slot:19b}] run scoreboard players set slot var 7
execute unless data block ~ ~ ~ Items[{Slot:20b}] run scoreboard players set slot var 8
execute unless data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players set slot var 9
execute unless data block ~ ~ ~ Items[{Slot:22b}] run scoreboard players set slot var 10
execute unless data block ~ ~ ~ Items[{Slot:23b}] run scoreboard players set slot var 11
execute unless data block ~ ~ ~ Items[{Slot:24b}] run scoreboard players set slot var 12
execute unless data block ~ ~ ~ Items[{Slot:25b}] run scoreboard players set slot var 13
execute if score slot var matches 0.. run function killerescape:config/ban/launch/__

# DEBUGMESSAGE
# execute if score slot var matches 0.. run tellraw @a {"translate":"clicked at %s","with":[{"score":{"name":"slot","objective":"var"}}]}
