
##統計データから各項目における功労者を取得します

#最も修理した人
scoreboard players set max var 0
scoreboard players operation max var > @a[tag=survivor] data_repair
tag @a remove most_repair
execute as @a[tag=survivor] if score @s data_repair = max var run tag @s add most_repair

#最も修理した人
scoreboard players set max var 0
scoreboard players operation max var > @a[tag=survivor] data_rescue
tag @a remove most_rescue
execute as @a[tag=survivor] if score @s data_rescue = max var run tag @s add most_rescue

#最も修理した人
scoreboard players set max var 0
scoreboard players operation max var > @a[tag=survivor] data_chase
tag @a remove most_chase
execute as @a[tag=survivor] if score @s data_chase = max var run tag @s add most_chase
