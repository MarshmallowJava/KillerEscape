##サバイバーの無敵判定
#無敵を持っていない場合はダメージを適用
execute as @s[tag=!invincible] at @s run function killerescape:game/damage/_

advancement revoke @s only killerescape:hurt_survivor