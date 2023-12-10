
##発動時の処理を行います

#カウント
execute store result score @s var if entity @a[tag=eliminated]

#脱落者がいない場合は失敗
execute if score @s var matches 0 run function killerescape:game/item/revive/fail

#脱落者がいる場合は成功
execute if score @s var matches 1.. run function killerescape:game/item/revive/success/
