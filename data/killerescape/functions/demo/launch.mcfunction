
##デモ開始の処理を行います

#デモ開始
scoreboard players set game_status time -1

#デモマップを設定
scoreboard players set selected mapid -1

#デモ進行度をリセット
scoreboard players set demoprogress time 0

#ゲームを初期化
function killerescape:game/init
