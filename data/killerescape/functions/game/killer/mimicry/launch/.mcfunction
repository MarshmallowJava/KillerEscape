
##他の鬼の能力を一つ獲得します

#付与
function killerescape:game/killer/mimicry/role/

#コンフィグを書き換え
scoreboard players set vampire_maxcount const 1

#各種ストック獲得
scoreboard players operation @s ice_time = ice_maxtoken const
scoreboard players set @s vampire_count 1

#演出
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1.5 0
