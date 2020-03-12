execute store result score @s 97-sleep_timer run data get entity @s SleepTimer
# Get global player count
scoreboard players set #PLAYER-COUNT 97-var 0
execute if score @s 97-sleep_timer matches 1.. as @a run scoreboard players add #PLAYER-COUNT 97-var 1
# Get global player in bed count
scoreboard players set #SLEEPING-COUNT 97-var 0
execute if score @s 97-sleep_timer matches 1.. as @a unless entity @s[nbt={SleepTimer:0s}] run scoreboard players add #SLEEPING-COUNT 97-var 1
# Calculate required players
scoreboard players set #SLEEPING-REQ 97-var 0
execute if score @s 97-sleep_timer matches 1.. run scoreboard players operation #SLEEPING-REQ 97-var = #PLAYER-COUNT 97-var
execute if score @s 97-sleep_timer matches 1.. run scoreboard players operation #SLEEPING-REQ 97-var /= #TWO 97-var
# Send message
execute if score @s 97-sleep_timer matches 1.. if score #SLEEPING-COUNT 97-var matches 1 run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" moved to turn night into day. ","color":"gold"}]
execute if score @s 97-sleep_timer matches 1.. if score #SLEEPING-COUNT 97-var matches 2 run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" seconded the motion.","color":"gold"}]
execute if score @s 97-sleep_timer matches 1.. if score #SLEEPING-COUNT 97-var >= #SLEEPING-REQ 97-var run function server-essentials:addons/sleep_vote/on_tick/slept_trigger/_anonymous0
# Reset trigger
execute if score @s 97-sleep_timer matches 1.. run scoreboard players set @s 97-slept_trigger 0
