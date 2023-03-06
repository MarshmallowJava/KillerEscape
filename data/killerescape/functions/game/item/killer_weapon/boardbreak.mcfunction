
##板を破壊します

#当たり判定を削除
fill ^ ^ ^ ^ ^ ^1 minecraft:air replace minecraft:barrier

#フラグ
tag @s add broken

#モデル削除
data modify entity @s ArmorItems[3] set value {}

#演出
particle minecraft:block minecraft:oak_planks ^ ^0.5 ^ 0.2 0.2 0.2 1 30 force @a
particle minecraft:block minecraft:oak_planks ^ ^0.5 ^1 0.2 0.2 0.2 1 30 force @a
playsound minecraft:item.shield.block master @a ~ ~ ~ 1 0.5 0
