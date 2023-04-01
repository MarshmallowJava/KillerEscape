
##能力「危機一髪」の処理を行います

#各生存者毎の処理
execute as @a[scores={close_call_time=1..}] at @s run function killerescape:game/ability/close_call/tick
