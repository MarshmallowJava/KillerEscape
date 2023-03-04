
##フックに関する処理を行います

#キラー毎に処理
execute as @a[tag=killer] at @s run function killerescape:game/hook/tick

#フック処理
tag @a remove hooked
execute as @e[tag=hook,tag=hooked] at @s run function killerescape:game/hook/tick__

#救助処理
execute as @a[tag=survivor,tag=!hooked,tag=!escaped,tag=!eliminated,tag=display_ui] at @s if entity @e[tag=hook,tag=used,distance=..3] run function killerescape:game/hook/tick___

#強制終了処理
execute unless entity @a[tag=survivor,tag=!hooked,tag=!escaped,tag=!eliminated] as @a[tag=survivor,tag=hooked] at @s run function killerescape:game/hook/execute
