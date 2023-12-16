
##追い払う処理を行います

#方向変換
execute facing entity @a[tag=target] feet rotated ~180 -30 run tp @s ~ ~ ~ ~ ~

#発光
effect give @s minecraft:glowing infinite 0 true

#タグ調整
tag @s remove vampire_point
tag @s add runaway
