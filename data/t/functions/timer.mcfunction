#timer -> 20tick ( timer = seconds ) [tag: start]
scoreboard players add tick seconds 1
execute if score tick seconds matches 20 run scoreboard players remove @a[tag=start] seconds 1
execute if entity @a[scores={seconds=..0},tag=start] run execute at @a[tag=t] run kill @a[distance=4..]
execute if entity @a[scores={seconds=..0},tag=start] run tag @a[tag=t] remove t
execute if entity @a[tag=t,scores={death=1..}] run kill @a
execute if entity @a[tag=t,scores={death=1..}] run tellraw @a "§l**中心が死んだため全員死亡します**"
scoreboard players set @a death 0
execute if entity @a[scores={seconds=..0},tag=start] run tag @a[sort=random,limit=1] add t
execute if entity @a[scores={seconds=..0},tag=start] run title @a title ["",{"text":"新しい中心は","color":"green"},{"selector":"@a[tag=t]","color":"green"},{"text":"です！","color":"green"}]
execute if entity @a[scores={seconds=..0},tag=start] run scoreboard players operation @a[tag=start] seconds = timer seconds
execute if score tick seconds matches 20 run scoreboard players set tick seconds 0
#spawnpoint
execute if entity @a[scores={seconds=..1},tag=start] run spawnpoint @a ~ ~ ~
