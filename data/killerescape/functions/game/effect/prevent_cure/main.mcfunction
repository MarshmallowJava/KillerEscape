
##回復不可の処理を行います

#時間減少
scoreboard players remove @a[scores={prevent_cure=1..}] prevent_cure 1

#表示
execute as @a[scores={prevent_cure=1..}] run function killerescape:game/effect/prevent_cure/display
