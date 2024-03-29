
##ポイントの当たり判定の処理を行います

#表示
title @a[gamemode=!spectator,tag=killer,tag=display_ui,distance=..3] actionbar "左クリックで蝙蝠を回収する"
title @a[gamemode=!spectator,tag=survivor,tag=display_ui,distance=..3] actionbar "左クリックで蝙蝠を追い払う"
tag @a[gamemode=!spectator,tag=display_ui,distance=..3] remove display_ui

#攻撃された場合
execute if data entity @s attack run function killerescape:game/killer/vampire/scareaway/

#下の蝙蝠が存在しなければ削除
scoreboard players set @s var 0
execute store result score @s var on vehicle run scoreboard players get #1 const
kill @s[type=minecraft:interaction,scores={var=0}]
