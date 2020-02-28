# Store spawn coordinates to player if bed
execute if data entity @s SpawnX store result score @s x.spawn run data get entity @s SpawnX
execute if data entity @s SpawnY store result score @s y.spawn run data get entity @s SpawnY
execute if data entity @s SpawnZ store result score @s z.spawn run data get entity @s SpawnZ
# Store world spawn coordinates if no bed
execute unless data entity @s SpawnX store result score @s x.spawn run scoreboard players get #SPAWN_X var
execute unless data entity @s SpawnY store result score @s y.spawn run scoreboard players get #SPAWN_Y var
execute unless data entity @s SpawnZ store result score @s z.spawn run scoreboard players get #SPAWN_Z var
