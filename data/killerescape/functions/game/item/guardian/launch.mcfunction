
##式神発動時の処理を行います

#透明付与
effect give @s minecraft:invisibility 3 0 true

#アイテム削除
clear @s minecraft:ender_eye{CustomTag:Guardian} 1

#演出
particle minecraft:squid_ink ~ ~1 ~ 0.3 0.5 0.3 0 50 force @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1 0
