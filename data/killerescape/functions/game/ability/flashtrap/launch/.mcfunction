
#設置
execute at @e[tag=communicator,tag=repairable,tag=!repaired,limit=1,sort=nearest] run summon minecraft:marker ~ ~ ~ {Tags:["flashtrap","init"]}

#数値設定
scoreboard players operation @e[tag=flashtrap,tag=init] entity_id = @s entity_id
scoreboard players set @e[tag=flashtrap,tag=init] time -34

#初期化完了
tag @e[tag=flashtrap,tag=init] remove init

#クールダウン発生
scoreboard players set @s cool_flashtrap 800

#サウンド
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2 0
