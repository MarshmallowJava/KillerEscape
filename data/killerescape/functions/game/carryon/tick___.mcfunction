
##背負われているアーマースタンドに常に行われるべき処理を行います

#トラッキング
execute rotated ~ 0 positioned ^ ^ ^-0.5 run tp @e[tag=carryon,tag=current] ~ ~ ~ ~180 ~ 

#生存者処理
scoreboard players operation current entity_id = @e[tag=carryon,tag=current] target_id
function killerescape:util/get_current

#観戦
gamemode spectator @a[tag=current]
spectate @s @a[tag=current,limit=1]

#タグ付け
tag @a[tag=current] add carryed

#時間経過
scoreboard players add @e[tag=carryon,tag=current] time 1
execute as @e[tag=carryon,tag=current,limit=1] at @s if score @s time > carryon_release const run function killerescape:game/carryon/release
function killerescape:util/get_current
