
##眷属の処理を行います

#target_idにデータがなければ検索状態
execute unless score @s target_id matches -2147483648..2147483647 run function killerescape:game/killer/multiply/tick/__

#target_idが存在すれば追跡
execute if score @s target_id matches -2147483648..2147483647 run function killerescape:game/killer/multiply/tick/___
