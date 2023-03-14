
##スキルチェックに関する処理を行います

#スキルチェック中のプレイヤー毎に処理します
execute as @a[scores={skillcheck_time=0..}] at @s run function killerescape:game/skillcheck/tick
