
##痕跡の処理を行います

#検索
execute if entity @s[tag=!appear] run function killerescape:util/get_current
execute if entity @s[tag=!appear] unless entity @e[tag=decoy,tag=current] run tag @s add appear

#発現
execute if entity @s[tag=appear] run function killerescape:game/killer/decoy/tick/__
