
##線鬼の処理を行います

#発動
execute as @a[nbt={SelectedItem:{tag:{CustomTag:Line}}},scores={useItem=1},tag=display_ui] at @s run function killerescape:game/killer/line/launch/

#消滅
execute unless entity @a[nbt={SelectedItem:{tag:{CustomTag:Line}}}] run kill @e[type=minecraft:marker,tag=line_point,tag=!paired]

#予測線
execute as @e[tag=line_point,tag=!paired] at @s facing entity @a[tag=killer,distance=..15] feet run function killerescape:game/killer/line/prediction

#警戒線
execute as @e[tag=line_point,tag=from] at @s run function killerescape:game/killer/line/tick/
