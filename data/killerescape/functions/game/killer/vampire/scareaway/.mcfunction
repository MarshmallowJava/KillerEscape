
##追い払う処理を行います

#攻撃対象を検索
data modify storage minecraft:killerescape arguments.UUID set from entity @s attack.player
function killerescape:util/search/

#蝙蝠の調整
execute on vehicle at @s run function killerescape:game/killer/vampire/scareaway/_

#デバフ
execute as @a[tag=target,tag=survivor] at @s run function killerescape:game/killer/vampire/scareaway/__

#削除
kill @s[type=minecraft:interaction]
