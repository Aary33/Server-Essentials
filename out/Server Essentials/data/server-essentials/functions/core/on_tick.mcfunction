# All
execute as @e at @s run scoreboard players add @s 97-age 1
execute as @e[scores={97-age=1}] at @s run function server-essentials:core/on_tick/existance
