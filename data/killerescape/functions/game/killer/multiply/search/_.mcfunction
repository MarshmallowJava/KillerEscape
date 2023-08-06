
##実行者までの間に障害物があれば候補フラグを下げます

#障害物であればフラグを下げる
execute unless block ~ ~ ~ #killerescape:see_through run tag @s remove insight

#エンティティまで到達していなければ再起
execute if entity @s[tag=insight] unless entity @e[tag=owner,distance=..0.5] positioned ^ ^ ^0.5 run function killerescape:game/killer/multiply/search/_
