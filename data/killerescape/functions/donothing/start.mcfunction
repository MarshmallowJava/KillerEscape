
##ゲーム終了直後の処理を行います

#ゲーム状態を「雑談フェーズ」に設定
scoreboard players set game_status time 666

#残り時間時間管理をリセット
scoreboard players set donothing time 1800

#ボスバー設定
bossbar set minecraft:remain max 1800
bossbar set minecraft:remain players @a

execute positioned as @e[tag=spawn_survivor,limit=1] as @a rotated as @s run tp @s ~ ~ ~ ~ ~


#タイトル
title @a subtitle {"text":"図書館"}
title @a title {"text":"探索フェーズ"}

#表示
tellraw @a {"text":"[システム] 1分30秒後にゲームが開始されます","color": "yellow"}
