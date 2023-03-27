
##生存者がロッカーをアクションし、他の生存者がいた場合に呼び出されます

#表示
tellraw @s {"text":"[システム] このロッカーは誰かが使用しています","italic": false,"color": "red"}

#サウンド
playsound minecraft:block.chest.locked master @s ~ ~ ~ 1 1.5 0
