##「潜伏」の処理
#効果発動
execute as @a if score @s sneak matches 80.. if data entity @s {Inventory:[{tag:{CustomTag:"ability_incubation"}}]} run effect give @s invisibility 1 0 true

#演出
execute as @a[nbt={Inventory:[{tag:{CustomTag:"ability_incubation"}}]},scores={sneak=80}] at @s run particle minecraft:squid_ink ~ ~1 ~ 0.3 0.5 0.3 0 50 force @a
execute as @a[nbt={Inventory:[{tag:{CustomTag:"ability_incubation"}}]},scores={sneak=80}] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1 0
