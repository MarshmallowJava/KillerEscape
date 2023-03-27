
##生存者がロッカーをアクションした時に呼び出されます

execute store result score @s var if score @s target_id matches -2147483648..2147483647

#未使用の場合
execute if score @s var matches 0 run function killerescape:game/box/act/survivor/_

#すでに使用者がいた場合
execute if score @s var matches 1 run function killerescape:game/box/act/survivor/__
