# Store spawn coordinates to player if bed
execute if data entity @s SpawnX store result score @s 97-x.spawn run data get entity @s SpawnX
execute if data entity @s SpawnY store result score @s 97-y.spawn run data get entity @s SpawnY
execute if data entity @s SpawnZ store result score @s 97-z.spawn run data get entity @s SpawnZ
# Store world spawn coordinates if no bed
execute unless data entity @s SpawnX store result score @s 97-x.spawn run scoreboard players get #SPAWN-X 97-var
execute unless data entity @s SpawnY store result score @s 97-y.spawn run scoreboard players get #SPAWN-Y 97-var
execute unless data entity @s SpawnZ store result score @s 97-z.spawn run scoreboard players get #SPAWN-Z 97-var
