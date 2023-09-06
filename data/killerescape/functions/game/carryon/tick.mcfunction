
##実行者がキラーとして処理を行います

#検索
function killerescape:util/get_current

#背負う
execute if entity @s[tag=display_ui] unless entity @e[tag=carryon,tag=current] if entity @a[tag=survivor,tag=lying,distance=..2] run function killerescape:game/carryon/tick_

#解放
execute if entity @s[tag=display_ui] if entity @e[tag=carryon,tag=current] run function killerescape:game/carryon/tick__

#毎tick処理
tag @a remove carryed
execute rotated ~ 0 positioned ^ ^ ^-0.5 as @e[tag=carryon,tag=current] run function killerescape:game/carryon/tick___
