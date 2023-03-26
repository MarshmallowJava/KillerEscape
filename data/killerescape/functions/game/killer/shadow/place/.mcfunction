
##ループ部分の処理を行います

#発動場所決定
execute if block ~ ~ ~ #killerescape:see_through run function killerescape:game/killer/shadow/place/_

#再起
execute unless block ~ ~ ~ #killerescape:see_through positioned ^ ^ ^1 run function killerescape:game/killer/shadow/place/
