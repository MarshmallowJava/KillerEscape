
##背負われているアーマースタンドに常に行われるべき処理を行います

#トラッキング
tp @s ~ ~ ~ ~180 ~ 

#生存者処理
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#観戦
gamemode spectator @a[tag=current]
spectate @a[tag=killer,limit=1,sort=nearest] @a[tag=current,limit=1]

#タグ付け
tag @a[tag=current] add carryed

#時間経過
scoreboard players add @s time 1
execute at @s if score @s time > carryon_release const run function killerescape:game/carryon/release
