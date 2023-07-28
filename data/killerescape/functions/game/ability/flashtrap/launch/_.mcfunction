
##トラップ発動時の処理を行います

#効果付与
effect give @a[tag=killer,distance=..4.8] minecraft:slowness 5 255 true
scoreboard players set @a[tag=killer,distance=..4.8] cool_attack 100

#演出
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2.4 2 0
particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a

#通知
function killerescape:game/ability/flashtrap/alert
