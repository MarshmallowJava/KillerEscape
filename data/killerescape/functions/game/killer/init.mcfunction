
##キラーの能力に関する変数を初期化します

scoreboard players set @a cool_shadow 0
scoreboard players set @a shadow_time 0
kill @e[type=minecraft:marker,tag=shadow]
kill @e[type=minecraft:armor_stand,tag=chain]

scoreboard players set @a cool_ice 0
scoreboard players set @a ice_time 0
tag @a remove watched_by_ice

scoreboard players set @a cool_fishing 0
scoreboard players set @a cool_fishing2 0

scoreboard players set @a vampire_time 0
scoreboard players set @a vampire_count 0
scoreboard players set @a cool_vampire 0
scoreboard players set @a vampire_accel 0
tag @a remove mode_choose
kill @e[type=minecraft:bat]
kill @e[type=minecraft:interaction,tag=vampire_point_collision]

kill @e[type=minecraft:marker,tag=line_point]

kill @e[type=minecraft:marker,tag=decoy]
kill @e[type=minecraft:marker,tag=decoy_trail]
scoreboard players set @a decoy_time 0
scoreboard players set @a cool_decoy 0

kill @e[type=minecraft:wandering_trader,tag=multiply]
kill @e[type=minecraft:zombie,tag=multiply]
scoreboard players set @a multiply_time 0
scoreboard players set @a cool_multiply 0
