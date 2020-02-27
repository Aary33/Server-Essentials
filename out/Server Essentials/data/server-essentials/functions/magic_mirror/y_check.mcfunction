scoreboard players remove @s tp_limit 1
# If current block is not air or limit is reached, teleport here
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s tp_limit 0
execute if score @s tp_limit matches 0 run tp @s ~ ~2 ~
# If limit has not been reached, loop recursively
execute if score @s tp_limit matches 1.. positioned ~ ~-1 ~ run function server-essentials:magic_mirror/y_check
