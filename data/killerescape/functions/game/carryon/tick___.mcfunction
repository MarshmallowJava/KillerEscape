
##背負われているアーマースタンドに常に行われるべき処理を行います

#トラッキング
execute rotated ~ 0 positioned ^ ^ ^-0.5 run tp @e[tag=carryon,tag=current] ~ ~ ~ ~180 ~ 

#生存者処理
scoreboard players operation current entity_id = @e[tag=carryon,tag=current] target_id
function killerescape:util/get_current

#観戦
gamemode spectator @a[tag=current]
spectate @s @a[tag=current,limit=1]
