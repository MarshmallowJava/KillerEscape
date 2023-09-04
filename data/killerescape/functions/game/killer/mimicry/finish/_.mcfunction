
##模倣能力を仕様完了したときに呼び出されます

#データを初期化
function killerescape:game/killer/init
function killerescape:game/killer/const

#アイテムを削除
clear @a #killerescape:all{Mimicry:1b}

#クールダウン設定
scoreboard players operation @s cool_mimicry = mimicry_cool const

#演出
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1 0
