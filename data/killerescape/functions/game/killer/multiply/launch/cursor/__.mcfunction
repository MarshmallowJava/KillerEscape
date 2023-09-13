

##

#位置調整
execute rotated as @s run tp @s ~ ~ ~ ~ ~

#再帰呼び出し
execute positioned ~ ~-0.1 ~ if block ~ ~ ~ #killerescape:pass_through run function killerescape:game/killer/multiply/launch/cursor/__
