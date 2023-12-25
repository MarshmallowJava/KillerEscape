
##実行位置に存在しないランダムな眷属に向かうタマシイを召喚します

#召喚
summon minecraft:marker ~ ~ ~ {Tags:["soul", "init"]}

#対象を決定
execute at @a[tag=killer] run tag @e[type=minecraft:wandering_trader,tag=multiply,tag=!hassoul,tag=!havingsoul,distance=0.1..,limit=1,sort=furthest] add focus
tag @e[tag=focus] add havingsoul

#対象を設定
scoreboard players operation @e[tag=soul,tag=init] target_id = @e[tag=focus,limit=1] entity_id

#初期化完了
tag @e[tag=soul,tag=init] remove init
tag @e remove focus
