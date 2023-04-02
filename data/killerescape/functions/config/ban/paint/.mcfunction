
##再描画を行います

#キラー用枠
item replace block ~ ~ ~ container.0 with minecraft:red_stained_glass_pane{CustomTag:Icon,display:{Name:'{"text":"キラー用プール","italic": false,"color": "red"}'}}
item replace block ~ ~ ~ container.8 with minecraft:red_stained_glass_pane{CustomTag:Icon,display:{Name:'{"text":"キラー用プール","italic": false,"color": "red"}'}}

#メイン描画
scoreboard players set slot var 1
scoreboard players set count var 7
data modify storage minecraft:temp temp set from storage minecraft:killerescape killers
data modify storage minecraft:temp temp2 set from storage minecraft:killerescape ban_pool0
function killerescape:config/ban/paint/_

#生存者用枠
item replace block ~ ~ ~ container.9 with minecraft:green_stained_glass_pane{CustomTag:Icon,display:{Name:'{"text":"生存者用プール","italic": false,"color": "green"}'}}
item replace block ~ ~ ~ container.17 with minecraft:green_stained_glass_pane{CustomTag:Icon,display:{Name:'{"text":"生存者用プール","italic": false,"color": "green"}'}}
item replace block ~ ~ ~ container.18 with minecraft:green_stained_glass_pane{CustomTag:Icon,display:{Name:'{"text":"生存者用プール","italic": false,"color": "green"}'}}
item replace block ~ ~ ~ container.26 with minecraft:green_stained_glass_pane{CustomTag:Icon,display:{Name:'{"text":"生存者用プール","italic": false,"color": "green"}'}}

#メイン描画
scoreboard players set slot var 10
scoreboard players set count var 7
data modify storage minecraft:temp temp set from storage minecraft:killerescape storage
data modify storage minecraft:temp temp2 set from storage minecraft:killerescape ban_pool1
function killerescape:config/ban/paint/__
scoreboard players set slot var 19
scoreboard players set count var 7
function killerescape:config/ban/paint/__
