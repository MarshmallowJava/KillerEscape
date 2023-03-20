execute as @a if data entity @s {Inventory:[{tag:{CustomTag:"hope"}}]} at @s run function killerescape:game/ability/hope/launch_as_player
scoreboard players set #actived var_hope 1
