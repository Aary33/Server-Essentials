execute at @s in minecraft:overworld run tp @s ~ ~ ~
execute at @s store result entity @s Pos[0] double 1 run scoreboard players get @s 97-x.spawn
execute at @s store result entity @s Pos[1] double 1 run scoreboard players get @s 97-y.spawn
execute at @s store result entity @s Pos[2] double 1 run scoreboard players get @s 97-z.spawn
execute at @s run tp @a[tag=owner] @s
execute at @s run tp @s ~0.5 ~ ~0.5
# First case: no check
execute at @s if block ~ ~1 ~ minecraft:air run tellraw @a[tag=owner] ["",{"text":"Teleported home.","color":"gray","italic":true}]
# Second case: Spread
execute at @s unless block ~ ~1 ~ minecraft:air run spreadplayers ~ ~ 0 5 false @s
# Third case: World Spawn
execute at @s unless block ~ ~1 ~ minecraft:air run function server-essentials:items/magic_mirror/store_world_spawn
# Fourth case: World Spawn Spread
execute at @s unless block ~ ~1 ~ minecraft:air at @s unless block ~ ~1 ~ minecraft:air run spreadplayers ~ ~ 0 5 false @s
# Teleport if successful location
execute at @s if block ~ ~1 ~ minecraft:air in minecraft:overworld run tp @a[tag=owner] ~ ~ ~
# Failure message
execute at @s unless block ~ ~1 ~ minecraft:air at @s unless block ~ ~1 ~ minecraft:air run tellraw @a[tag=owner] ["",{"text":"The mirror stares back. No safe spawnpoint or worldspawn found.","color":"gray","italic":true}]
execute at @s run tag @a[tag=owner] remove owner
execute at @s run kill @s
