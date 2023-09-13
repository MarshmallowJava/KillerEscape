
##追い払う処理を行います

#方向変換
execute facing entity @a[tag=target] feet rotated ~180 -30 run tp @s ~ ~ ~ ~ ~

#タグ調整
tag @s remove vampire_point
tag @s add runaway
