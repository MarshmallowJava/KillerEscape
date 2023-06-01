##「極限」発動時処理
#クールタイム設定
scoreboard players set @s cool_limit 800

#バフ適用
attribute @s generic.movement_speed modifier add 278b5df2-95c7-436b-8a12-9983e62cda03 "limit_buff" 1.5 multiply

#演出
playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 1.8 0