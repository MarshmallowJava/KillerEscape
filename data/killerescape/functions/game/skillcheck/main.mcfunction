
##スキルチェックに関する処理を行います

#スキルチェッククールダウン
scoreboard players add @a[scores={skillcheck_time=..-2}] skillcheck_time 1
scoreboard players reset @a[scores={skillcheck_time=-1}] skillcheck_time

#スキルチェック中のプレイヤー毎に処理します
execute as @a[scores={skillcheck_time=0..}] at @s run function killerescape:game/skillcheck/tick
