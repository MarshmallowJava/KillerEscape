
##アビリティに関する変数を初期化します

#プールをリセット
data modify storage minecraft:killerescape pool set from storage minecraft:killerescape storage

#各能力リセット
function killerescape:game/ability/dash/init
function killerescape:game/ability/area_heal/init
