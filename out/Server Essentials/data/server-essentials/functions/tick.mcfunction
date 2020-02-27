# All
# Player-specific
execute as @e at @s run scoreboard players add @s age 1
execute as @e[scores={age=1}] at @s run function server-essentials:tick/existance
execute as @a[scores={age=1}] at @s run function server-essentials:tick/left_game
execute as @a[scores={leave_game=1..}] at @s run function server-essentials:tick/left_game
