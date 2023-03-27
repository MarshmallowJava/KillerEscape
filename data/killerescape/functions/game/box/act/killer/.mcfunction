
##キラーがロッカーをアクションした時に呼び出されます

##キラーがロッカーにアクションした時に呼び出されます

#すでに担いでいるか判定
execute as @a[tag=target] run function killerescape:util/get_current

#開く
execute unless entity @e[tag=current,tag=carryon] unless score @s box_time matches 1.. run function killerescape:game/box/act/killer/_
