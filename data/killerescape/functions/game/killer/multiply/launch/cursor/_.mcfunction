

##

#位置調整
execute rotated as @s run tp @s ~ ~ ~ ~ ~

#距離減少
scoreboard players remove distance var 1

#再帰呼び出し
execute if score distance var matches 1.. positioned ^ ^ ^0.1 if block ~ ~ ~ #killerescape:pass_through run function killerescape:game/killer/multiply/launch/cursor/_
