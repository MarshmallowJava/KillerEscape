
##デバッグ用処理「ゲームリセット」
##ゲームを強制終了し初期状態にします

#ゲーム状態をロビーへ
scoreboard players set game_status time 0

#ゲーム変数を初期化
function killerescape:game/init
