
##実行者にキラー用能力を１つランダムに付与します

#表示
tellraw @a {"translate":"[システム] 今回の鬼は特殊能力を持っていません","italic": false,"color": "red"}
title @a subtitle {"translate":"今回の鬼は 通常鬼 です","italic": false,"color": "yellow"}

#統計データ作成
function killerescape:statistics/report1
