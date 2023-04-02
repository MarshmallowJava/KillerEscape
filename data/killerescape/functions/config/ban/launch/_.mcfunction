
##キラープールを設定します

data modify storage minecraft:temp temp set from storage minecraft:killerescape ban_pool0
data remove storage minecraft:temp temp2

scoreboard players set count var 0
function killerescape:config/ban/launch/___

data modify storage minecraft:killerescape ban_pool0 set from storage minecraft:temp temp2

# tellraw @a {"text":"[システム] プールを更新しました","italic": false,"color": "yellow"}
