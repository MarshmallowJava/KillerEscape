
##キラーの能力に関する変数を初期化します

scoreboard players set @a cool_shadow 0
scoreboard players set @a shadow_time 0
kill @e[type=minecraft:marker,tag=shadow]
kill @e[type=minecraft:armor_stand,tag=chain]

scoreboard players set @a ice_time 0
tag @a remove watched_by_ice

scoreboard players set @a cool_fishing 0