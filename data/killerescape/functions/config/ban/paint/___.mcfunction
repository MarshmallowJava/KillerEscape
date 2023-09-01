
##自動BANモードの描画を行います

execute if score autoban const matches 0 run item replace block ~ ~ ~ container.8 with minecraft:barrier{CustomTag:Icon,display:{Name:'{"text":"自動BANモード切り替え","italic": false,"color": "light_purple"}',Lore:['{"text":"前回の試合で採用された能力を自動的にBANします","italic": false,"color": "green"}']}}
execute if score autoban const matches 1 run item replace block ~ ~ ~ container.8 with minecraft:repeating_command_block{CustomTag:Icon,display:{Name:'{"text":"自動BANモード切り替え","italic": false,"color": "light_purple"}',Lore:['{"text":"前回の試合で採用された能力を自動的にBANします","italic": false,"color": "green"}']}}
