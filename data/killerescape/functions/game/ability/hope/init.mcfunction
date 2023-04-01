##「希望」の初期化処理

#スコアリセット
scoreboard players set #repaired var_hope 0
scoreboard players set #actived var_hope 0

#速度バフ解除
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove e14b8246-089f-4b7a-8754-1e47c035989b
