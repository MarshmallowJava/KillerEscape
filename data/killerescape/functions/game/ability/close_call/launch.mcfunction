
##能力発動時の処理を行います

#非救助者を検索
scoreboard players operation current entity_id = @e[tag=hook,tag=used,limit=1,sort=nearest] target_id
function killerescape:util/get_current

#有効時間を設定
scoreboard players set @a[tag=current] close_call_time 200
scoreboard players set @s close_call_time 200

#サウンド
execute as @a[tag=current] at @s run playsound minecraft:block.anvil.place master @s 1 2 0
playsound minecraft:block.anvil.place master @s 1 2 0

#演出
execute at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.6 0.5 0 10 force @a
particle minecraft:flame ~ ~1 ~ 0.5 0.6 0.5 0 10 force @a

#表示
tellraw @a[tag=current] {"text":"[危機一髪] 5秒間無敵になった","italic": false,"color": "yellow"}
tellraw @s {"text":"[危機一髪] 5秒間無敵になった","italic": false,"color": "yellow"}
