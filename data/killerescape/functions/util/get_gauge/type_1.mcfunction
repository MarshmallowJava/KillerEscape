
##ゲージタイプが百分率の場合の処理を行います

#スケーリング
scoreboard players operation now var = value var
scoreboard players operation now var *= #100 const
scoreboard players operation now var /= max var

#jsonテキストを獲得
data modify block 1 0 0 Text1 set value '{"translate":"%s%s%%%s","with":[{"storage":"minecraft:temp","nbt":"gauge.left","interpret":true},{"score":{"name":"now","objective":"var"}},{"storage":"minecraft:temp","nbt":"gauge.right","interpret":true}]}'
data modify storage minecraft:killerescape result set from block 1 0 0 Text1
