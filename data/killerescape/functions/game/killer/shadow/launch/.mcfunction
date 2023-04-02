
##影鬼の能力の発動に関する処理を行います

#発動可能
execute if entity @s[tag=display_ui,scores={useItem=1}] run function killerescape:game/killer/shadow/launch/_

# execute if score @s sneak matches 0 run effect clear @s[nbt={ActiveEffects:[{Id:1,Amplifier:30b}]}] minecraft:speed
# execute if score @s sneak matches 0 run effect clear @s minecraft:invisibility
# execute if score @s sneak matches 1 run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 0.5 0
# execute if score @s sneak matches 1.. run effect give @s minecraft:invisibility 1 0 true
# execute if score @s sneak matches 1.. run effect give @s minecraft:speed 1 30 true
# execute if score @s sneak matches 1.. run particle minecraft:dust_color_transition 0.5 0 0.5 1.5 0 0 0 ~ ~ ~ 0.3 0 0.3 1 10 force @a