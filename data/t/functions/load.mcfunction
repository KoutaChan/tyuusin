scoreboard objectives add seconds dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
gamerule doImmediateRespawn true
scoreboard objectives add death deathCount
execute unless score timer seconds = timer seconds run scoreboard players set timer seconds 60