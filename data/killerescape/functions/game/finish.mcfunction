
##ゲーム終了時の処理を行います

#勝敗判定
scoreboard players set result var 0
execute store result score count var if entity @a[tag=survivor,tag=escaped]
execute store result score all var if entity @a[tag=survivor]
scoreboard players operation half var = all var
scoreboard players operation half var /= #2 const
execute if score count var < half var run scoreboard players set result var -1
execute if score count var > half var run scoreboard players set result var 1

#リザルト開始
function killerescape:result/start

#イベントトリガー
function killerescape:event/on_finish_game
