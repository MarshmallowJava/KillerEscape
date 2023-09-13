

##

#有効距離
scoreboard players set distance var 40

#位置調整
execute as @e[tag=multiply_cursor,tag=current] rotated as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=multiply_cursor,tag=current] positioned as @s run function killerescape:game/killer/multiply/launch/cursor/_
execute as @e[tag=multiply_cursor,tag=current] positioned as @s run function killerescape:game/killer/multiply/launch/cursor/__
