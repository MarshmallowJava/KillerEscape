
##各アンカーごとの処理を行います

#検索
function killerescape:util/get_current

#繰り返し部分
execute at @s run function killerescape:game/killer/fishing/tick/_
execute at @s run function killerescape:game/killer/fishing/tick/_
execute at @s run function killerescape:game/killer/fishing/tick/_
execute at @s run function killerescape:game/killer/fishing/tick/_
execute at @s run function killerescape:game/killer/fishing/tick/_

#サウンド
execute if entity @s[tag=anchored] as @a[tag=current] at @s run playsound minecraft:entity.fishing_bobber.retrieve master @s ~ ~ ~ 1 2 0

#削除
kill @s[type=minecraft:armor_stand,tag=!still_alive]
tag @s remove still_alive
