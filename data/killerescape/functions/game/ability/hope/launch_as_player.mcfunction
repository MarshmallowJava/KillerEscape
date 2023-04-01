##「希望」のアイテム所持者に対する処理
#演出
tellraw @s ["",{"text": "[希望]","color": "yellow"},{"text": " 移動速度が上昇","color": "yellow"}]
playsound block.beacon.activate master @s ~ ~ ~ 1.0 1.6 0
#速度バフ
attribute @s minecraft:generic.movement_speed modifier add e14b8246-089f-4b7a-8754-1e47c035989b "hope" 2.0 multiply