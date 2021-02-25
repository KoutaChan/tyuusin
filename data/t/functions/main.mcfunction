execute at @a[tag=start] run function t:timer
title @a actionbar ["",{"text":"[ ","color":"green"},{"text":"残り時間","color":"gold"},{"score":{"name":"@a[tag=start]","objective":"seconds"},"color":"gold"},{"text":"秒","color":"gold"},{"text":" | ","color":"aqua"},{"text":"中心: ","color":"gold"},{"selector":"@a[tag=t]","color":"gold"},{"text":" | ","color":"aqua"},{"text":" 座標 X:","color":"gold"},{"score":{"name":"@a[tag=t]","objective":"x"},"color":"gold"},{"text":" Y:","color":"gold"},{"score":{"name":"@a[tag=t]","objective":"y"},"color":"gold"},{"text":" Z:","color":"gold"},{"score":{"name":"@a[tag=t]","objective":"z"},"color":"gold"},{"text":" ]","color":"green"}]
effect give @a[tag=t] minecraft:glowing 1 0 true

#座標
execute store result score @a[tag=t] x run data get entity @a[tag=t,limit=1] Pos[0]
execute store result score @a[tag=t] y run data get entity @a[tag=t,limit=1] Pos[1]
execute store result score @a[tag=t] z run data get entity @a[tag=t,limit=1] Pos[2]