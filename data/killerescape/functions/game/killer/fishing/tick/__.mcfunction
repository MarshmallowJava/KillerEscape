
##生存者を引っ掛ける前の処理を行います

#移動
tp @s ^ ^ ^0.5 ~ ~

#当たり判定
execute positioned ~ ~-1 ~ as @a[tag=survivor,tag=!hooked,gamemode=!spectator,distance=..1,limit=1,sort=nearest] run function killerescape:game/killer/fishing/catch
