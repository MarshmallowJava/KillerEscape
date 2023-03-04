
##キラーが生存者を背負うまでの処理を行います

#各キラーごとに処理
execute as @a[tag=killer] at @s run function killerescape:game/carryon/tick
