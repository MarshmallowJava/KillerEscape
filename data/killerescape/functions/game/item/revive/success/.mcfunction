
##成功時の処理を行います

#復活対象を決定(その試合でまだ復活していない人を優先)
execute unless entity @a[tag=eliminated,tag=!revived] run tag @a remove revived
execute as @a[tag=eliminated,tag=!revived,limit=1,sort=random] run function killerescape:game/item/revive/success/_
