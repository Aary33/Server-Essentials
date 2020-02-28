execute in minecraft:overworld run tp @s 0.5 0.0 0.5
execute store result entity @s Pos[0] double 1 run scoreboard players get @s x.spawn
execute store result entity @s Pos[1] double 1 run scoreboard players get @s y.spawn
execute store result entity @s Pos[2] double 1 run scoreboard players get @s z.spawn
execute at @s run tp @s ~0.5 ~ ~0.5
# Second case: Spread
execute at @s unless block ~ ~ ~ minecraft:air run spreadplayers ~ ~ 0 5 false @s
# Third case: World Spawn
execute at @s unless block ~ ~ ~ minecraft:air run function server-essentials:magic_mirror/store_world_spawn
# Fourth case: World Spawn Spread
execute at @s unless block ~ ~ ~ minecraft:air run spreadplayers ~ ~ 0 5 false @s
# Teleport if successful location
execute at @s if block ~ ~ ~ minecraft:air in minecraft:overworld run tp @a[tag=owner] ~ ~ ~
# Failure message
execute at @s unless block ~ ~ ~ minecraft:air run tellraw @a[tag=owner] ["",{"text":"The mirror stares back. No safe spawnpoint or worldspawn found.","color":"gray","italic":true}]
tag @a[tag=owner] remove owner
kill @s
