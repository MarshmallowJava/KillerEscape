
##デモの文字説明処理を行います

execute if score demoprogress time matches 0 run tellraw @a "----------"
execute if score demoprogress time matches 0 run tellraw @a {"translate":"キラーエスケープでは %s %sに分かれて勝負します","with":[{"text":"キラー陣営 1人","color":"red"},{"text":"生存者陣営 4人","color":"green"}]}
execute if score demoprogress time matches 0 run tellraw @a {"translate":" %s、キラーから逃げながら%s勝利です","with":[{"text":"生存者陣営は","color": "green"},{"text":"通信機を修理し、ゲートを解錠して脱出すれば","color":"yellow"}]}
execute if score demoprogress time matches 0 run tellraw @a {"translate":" %s、生存者の脱出を阻止し%s勝利です","with":[{"text":"キラー陣営は","color": "red"},{"text":"全滅させれば","color":"yellow"}]}
execute if score demoprogress time matches 0 run tellraw @a "----------"

execute if score demoprogress time matches 1 run tellraw @a "----------"
execute if score demoprogress time matches 1 run tellraw @a {"translate":"両陣営はゲーム開始時にランダムな能力が付与されます","with":[{"text":"","color":"yellow"}]}
execute if score demoprogress time matches 1 run tellraw @a {"translate":"\n例として能力「疾走」は生存者に付与される能力の一つで、%s１秒間高速移動が可能となります","with":[{"text":"右クリックで使用することで","color":"yellow"}]}
execute if score demoprogress time matches 1 run tellraw @a {"translate":"","with":[{"text":"","color":"yellow"}]}
execute if score demoprogress time matches 1 run tellraw @a "----------"
