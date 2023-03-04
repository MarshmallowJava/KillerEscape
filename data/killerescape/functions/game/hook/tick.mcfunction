
##各キラーの処理を行います

#検索
function killerescape:util/get_current

#担ぎ状態であれば処理を続行
execute if entity @s[tag=display_ui] if entity @e[tag=carryon,tag=current] if entity @e[tag=hook,tag=!used,distance=..3] run function killerescape:game/hook/tick_
